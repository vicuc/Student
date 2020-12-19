import 'package:flutter/material.dart';

import 'baigiangmon.dart';

class BaiGiangChiTietScreen extends StatefulWidget {
  static final routeName = "/baigiangchitiet";
  @override
  _BaiGiangChiTietScreenState createState() => _BaiGiangChiTietScreenState();
}

class _BaiGiangChiTietScreenState extends State<BaiGiangChiTietScreen> {
  var _baigiangTenController = 
  final List<String> listof = [
    "Bài 1",
    "Bài 2",
    "Bài 3",
    "Bài 4",
    "Bài 5",
    "Bài 6",
    "Bài 7",
    "Bài 8",
  ];
  @override
  Widget build(BuildContext context) {
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
      body: new Container(
        child: new ListView.builder(
          itemBuilder: (_, int index) => InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(
                BaiGiangMonScreen.routeName,
                arguments: this.listof[index],
              );
            },
            child: buildListItem(this.listof[index]),
          ),
          itemCount: this.listof.length,
        ),
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
                controller: ,
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
