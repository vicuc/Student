import 'package:Student/screens/dapananh.dart';
import 'package:flutter/material.dart';

import 'de.dart';

class BaiTapChiTietScreen extends StatefulWidget {
  static final routeName = "/baitapchitiet";
  @override
  _BaiTapChiTietScreenState createState() => _BaiTapChiTietScreenState();
}

class _BaiTapChiTietScreenState extends State<BaiTapChiTietScreen> {
  final List<String> listof = [
    "Bài 1",
    "Bài 2",
    "Bài 3",
    "Bài 4",
    "Bài 5",
    "Bài 6",
    "Bài 7",
    "Bài 8",
    "Đáp án",
  ];
  @override
  Widget build(BuildContext context) {
    String tenmonhoc = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: new AppBar(
        iconTheme: IconThemeData(color: Colors.amber),
        title: Row(
          children: [
            new Text(
              "Bài Tập $tenmonhoc",
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
              if (this.listof[index] == "Đáp án") {
                Navigator.of(context).pushNamed(
                  DapananhScreen.routeName,
                );
              } else {
                Navigator.of(context).pushNamed(
                  DeScreen.routeName,
                  //bang diem mon
                  arguments: this.listof[index],
                );
              }
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
