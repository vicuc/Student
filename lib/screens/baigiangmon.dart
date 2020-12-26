import 'package:Student/models/baigiang.dart';
import 'package:Student/models/baihoc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class BaiGiangMonScreen extends StatefulWidget {
  final BaiHoc bh;
  static final routeName = "/baigiangmon";

  const BaiGiangMonScreen({Key key, this.bh}) : super(key: key);
  @override
  _BaiGiangMonScreenState createState() => _BaiGiangMonScreenState();
}

class _BaiGiangMonScreenState extends State<BaiGiangMonScreen> {
  BaiGiang  _baiGiang;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: new AppBar(
        iconTheme: IconThemeData(color: Colors.amber),
        title: Row(
          children: [
            new Text(
              widget.bh.bh_ten,
              style: new TextStyle(fontSize: 19.0, color: Colors.amber),
            ),
          ],
        ),
        backgroundColor: Colors.cyan[900],
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: Firestore.instance.collection("baigiang").where("bh_id",isEqualTo: widget.bh.bh_id).snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Image.asset("assets/loading.gif");
          } else if (snapshot.data.documents == null){
              return Container(
              child: Text("Chưa có bài giảng!!!", 
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.blueGrey),),
            );
          } else {
            var document =snapshot.data.documents.toList();
            _baiGiang = BaiGiang.fromJson(document.first.data, document.first.documentID);
            return _body(_baiGiang);
            //return Text(_baiGiang.bg_id + _baiGiang.bg_ten  +_baiGiang.bg_video +_baiGiang.bg_noidung);
          }
        }
      ),
    );
  }

  Widget _body(BaiGiang baiGiang){
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20,),
          Container(
            child: Text(baiGiang.bg_ten, style: 
            TextStyle(color: Colors.black, fontSize: 25, 
                      fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: 20,),
          YoutubeVideo(video: baiGiang.bg_video,),
          SizedBox(height: 20,),
          Container(
            child: Text("Nội dung", 
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.blueGrey),),
          ),
          SizedBox(height: 20,),
          Container(
            child: Text(baiGiang.bg_noidung, 
            style: TextStyle(fontSize: 15),),
          )
        ],
      ),
    );
  }
} 

class YoutubeVideo extends StatefulWidget {
  final String video;

  const YoutubeVideo({Key key, this.video}) : super(key: key);
  @override
  _YoutubeVideoState createState() => _YoutubeVideoState();
}

class _YoutubeVideoState extends State<YoutubeVideo> {
YoutubePlayerController _youtubePlayerController;

  @override
  Widget build(BuildContext context) {
    _youtubePlayerController = YoutubePlayerController(
      initialVideoId: widget.video,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      )
    );
    return Container(
      child:  YoutubePlayer(
        controller: _youtubePlayerController,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.blueAccent,
        ),
    );
  }
}
