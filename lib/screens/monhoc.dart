import 'package:Student/screens/bangdiemmon.dart';
import 'package:flutter/material.dart';

class MonHocScreen extends StatefulWidget {
  static final routeName = "/bangdiemmon";
  @override
  _MonHocScreenState createState() => _MonHocScreenState();
}

class _MonHocScreenState extends State<MonHocScreen> {
  final List<String> listof = [
    "Anh Văn",
    "Công Nghệ",
    "GDCD",
    "GDQP",
    "Hóa Học",
    "Lịch Sử",
    "Ngữ Văn",
    "Sinh Học",
    "Thể Dục",
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
              "Môn Học",
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
                BangDiemMonScreen.routeName,
                //bang diem mon
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
            new Text(
              "0.0",
              style: TextStyle(fontSize: 20.0, color: Colors.amber),
            ),
          ],
        ),
      ),
    );
  }
}
