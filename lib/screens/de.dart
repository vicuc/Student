import 'package:Student/screens/dapananh.dart';
import 'package:Student/views/cauhoianh1.dart';
import 'package:Student/views/cauhoianh2.dart';

import 'package:flutter/material.dart';

class DeScreen extends StatefulWidget {
  static final routeName = "/de";
  @override
  _DeScreenState createState() => _DeScreenState();
}

class _DeScreenState extends State<DeScreen> {
  String colorGroupValue = '';
  @override
  Widget build(BuildContext context) {
    String tenbai = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: new AppBar(
        iconTheme: IconThemeData(color: Colors.amber),
        title: Row(
          children: [
            new Text(
              "Câu hỏi $tenbai",
              style: new TextStyle(fontSize: 19.0, color: Colors.amber),
            ),
          ],
        ),
        backgroundColor: Colors.cyan[900],
      ),
      body: _buildDe(tenbai),
    );
  }

  Widget _buildDe(String tenbai) {
    if (tenbai == 'Bài 1') {
      return ListView(
        children: [
          CauHoiAnh1(),
        ],
      );
    }
    if (tenbai == 'Bài 2') {
      return ListView(
        children: [
          CauHoiAnh2(),
        ],
      );
    }

    return Text("Not found");
  }
}
