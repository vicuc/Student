import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'baitapchitiet.dart';

class BaiTapScreen extends StatefulWidget {
  static final routeName = "/baitap";
  final String l_id;

  const BaiTapScreen({Key key, this.l_id}) : super(key: key);
  @override
  _BaiTapScreenState createState() => _BaiTapScreenState();
}

class _BaiTapScreenState extends State<BaiTapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: new AppBar(
        iconTheme: IconThemeData(color: Colors.amber),
        title: Row(
          children: [
            new Text(
              "Bài Tập Các Môn",
              style: new TextStyle(fontSize: 19.0, color: Colors.amber),
            ),
          ],
        ),
        backgroundColor: Colors.cyan[900],
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: Firestore.instance.collection("subject").snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData){
            return Image.asset("assets/loading.gif");
          } else if (snapshot.data.documents == null || snapshot.data.documents.length == 0) {
            return Container(
              child: Text("Chưa có bài tập!!!", 
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.blueGrey),),
            );
          } else {
            var document =snapshot.data.documents.toList();
            return new Container(
            child: new ListView.builder(
              itemCount: snapshot.data.documents.toList().length,
              itemBuilder: (_, int index) => InkWell(
                onTap: () {
                  Navigator.push(
                  context,MaterialPageRoute(builder: (context) =>
                          BaiTapChiTietScreen(l_id: widget.l_id,mh_id: document[index].documentID,)));
                },
                child: buildListItem(document[index]['name']),
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
            IconButton(
                icon: Icon(
                  Icons.view_list,
                  size: 40.0,
                  color: Colors.amber,
                ),
                onPressed: () {
                  // Navigator.of(context)
                  //     .pushNamed(BaiTapChiTietScreen.routeName);
                }),
          ],
        ),
      ),
    );
  }
}
