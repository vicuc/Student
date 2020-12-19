import 'package:Student/models/tkb.dart';
import 'package:flutter/material.dart';

class TkbScreen extends StatefulWidget {
  static final routeName = "/tkb";
  @override
  _TkbScreenState createState() => _TkbScreenState();
}

class _TkbScreenState extends State<TkbScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: new AppBar(
        iconTheme: IconThemeData(color: Colors.amber),
        backgroundColor: Colors.cyan[700],
        title: new Text(
          "Thời Khóa Biểu",
          style: TextStyle(fontSize: 19.0, color: Colors.amber),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Table(
              children: <TableRow>[
                TableRow(children: [
                  Text(''),
                  Text(
                    'T2',
                    textAlign: TextAlign.center,
                  ),
                  Text('T3', textAlign: TextAlign.center),
                  Text('T4', textAlign: TextAlign.center),
                  Text('T5', textAlign: TextAlign.center),
                  Text('T6', textAlign: TextAlign.center),
                  Text('T7', textAlign: TextAlign.center),
                  Text('CN', textAlign: TextAlign.center),
                ]),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text('Buổi Sáng'),
            ),
          ),
          buildTable(6),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text('Buổi Chiều'),
            ),
          ),
          buildTable1(6),
        ],
      ),
    );
  }

  Widget buildTable(int numRows) {
    final tkb = Tkb.fakeOne();
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        color: Colors.white,
        child: Table(
          border: TableBorder.all(),
          children: List.generate(
            numRows,
            (index) => TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    'Tiết ${index + 1}',
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(tkb.tiet1),
                Text(tkb.tiet2),
                Text(tkb.tiet3),
                Text(tkb.tiet4),
                Text(tkb.tiet5),
                Text(''),
                Text(''),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTable1(int numRows) {
    final tkb = Tkb.fakeOne();
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        color: Colors.white,
        child: Table(
          border: TableBorder.all(),
          children: List.generate(
            numRows,
            (index) => TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    'Tiết ${index + 1}',
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(''),
                Text(''),
                Text(''),
                Text(tkb.tiet6),
                Text(''),
                Text(''),
                Text(''),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
