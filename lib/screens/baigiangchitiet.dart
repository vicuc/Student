import 'package:Student/models/baihoc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'baigiangmon.dart';

class BaiGiangChiTietScreen extends StatefulWidget {
  final String l_id;
  final String mh_id;
  static final routeName = "/baigiangchitiet";

  const BaiGiangChiTietScreen({Key key, this.l_id, this.mh_id}) : super(key: key);
  @override
  _BaiGiangChiTietScreenState createState() => _BaiGiangChiTietScreenState();
}

class _BaiGiangChiTietScreenState extends State<BaiGiangChiTietScreen> {

  BaiHoc _baiHoc;

  @override
  Widget build(BuildContext context) {
    print(widget.l_id);
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: new AppBar(
        iconTheme: IconThemeData(color: Colors.amber),
        title: Row(
          children: [
            new Text(
              "Bài Giảng",
              style: new TextStyle(fontSize: 19.0, color: Colors.amber),
            ),
          ],
        ),
        backgroundColor: Colors.cyan[900],
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: Firestore.instance.collection("baihoc")
        .where('mh_id',isEqualTo: widget.mh_id)
        .where('l_id',isEqualTo: widget.l_id)
        .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData){
            return Image.asset("assets/loading.gif");
          } else {
            var document =snapshot.data.documents.toList();
            return new Container(
            child: new ListView.builder(
              itemCount: snapshot.data.documents.toList().length,
              itemBuilder: (_, int index) => InkWell(
                onTap: () {
                  _baiHoc = BaiHoc.fromJson(document[index].data,document[index].documentID );
                  Navigator.push(
                  context,MaterialPageRoute(builder: (context) =>
                          BaiGiangMonScreen(bh: _baiHoc,)));
                },
                child: buildListItem(document[index]['bh_ten']),
              ),
            ),
          );
          }
        }
      ),
    );
  }

  Widget buildListItem(String itemName) {
    return new Card(
      color: Colors.cyan[800],
      elevation: 5.0,
      child: new Container(
        margin: EdgeInsets.all(7.0),
        padding: EdgeInsets.all(6.0),
        child: new Row(
          children: <Widget>[
            new CircleAvatar(
              child: new Text(itemName[0]),
              backgroundColor: Colors.cyan[900],
              foregroundColor: Colors.amber,
            ),
            new Padding(padding: EdgeInsets.all(8.0)),
            Expanded(
              child: new Text(
                itemName,
                style: TextStyle(fontSize: 20.0, color: Colors.amber),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
