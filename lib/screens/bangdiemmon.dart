import 'package:flutter/material.dart';

class BangDiemMonScreen extends StatefulWidget {
  static final routeName = "/bangdiemmon";
  @override
  _BangDiemMonScreenState createState() => _BangDiemMonScreenState();
}

class _BangDiemMonScreenState extends State<BangDiemMonScreen> {
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
              "Bảng Điểm $tenmonhoc",
              style: new TextStyle(fontSize: 19.0, color: Colors.amber),
            ),
          ],
        ),
        backgroundColor: Colors.cyan[900],
      ),
      body: Column(
        children: [
          Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(child: Text("Môn")),
              )),
          // Expanded(
          //   child: DiemList(),
          // ),
          Container(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text("HK2"),
              ),
            ),
          ),
          // Expanded(
          //   child: DiemList(),
          // ),
        ],
      ),
    );
  }
}
