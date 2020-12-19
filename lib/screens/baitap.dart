import 'package:flutter/material.dart';

import 'baitapchitiet.dart';

class BaiTapScreen extends StatefulWidget {
  static final routeName = "/baitap";
  @override
  _BaiTapScreenState createState() => _BaiTapScreenState();
}

class _BaiTapScreenState extends State<BaiTapScreen> {
  final List<String> listof = [
    "Anh Văn",
    "Hóa Học",
    "Lịch Sử",
    "Ngữ Văn",
    "Sinh Học",
    "Tin Học",
    "Toán Học",
    "Vật Lý"
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
              "Bài Tập Các Môn",
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
                BaiTapChiTietScreen.routeName,
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
                  Navigator.of(context)
                      .pushNamed(BaiTapChiTietScreen.routeName);
                }),
          ],
        ),
      ),
    );
  }
}
