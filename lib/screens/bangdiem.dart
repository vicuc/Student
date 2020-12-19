import 'package:flutter/material.dart';

class BangDiemScreen extends StatefulWidget {
  static final routeName = "/bangdiem";
  @override
  _BangDiemScreenState createState() => _BangDiemScreenState();
}

class _BangDiemScreenState extends State<BangDiemScreen> {
  @override
  Widget build(BuildContext context) {
    // Lay params tu router
    String tenmonhoc = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: new AppBar(
        iconTheme: IconThemeData(color: Colors.amber),
        backgroundColor: Colors.cyan[700],
        title: new Text(
          "Tổng Điểm Cá Nhân",
          style: TextStyle(fontSize: 19.0, color: Colors.amber),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Table(
                border: TableBorder(
                  horizontalInside: BorderSide(color: Colors.black54),
                ),
                children: <TableRow>[
                  TableRow(
                    children: [
                      Text(
                        'Môn Học',
                        textAlign: TextAlign.center,
                      ),
                      Text('HK1', textAlign: TextAlign.center),
                      Text('HK2', textAlign: TextAlign.center),
                      Text('Tổng', textAlign: TextAlign.center),
                    ],
                  ),
                  ...List.generate(
                    100,
                    (index) => buildRow(
                      monhoc: "Môn $index",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Expanded(child: Text("ĐTB:")),
              Text("0.0"),
            ],
          ),
        ),
      ),
    );
  }

  TableRow buildRow(
      {String monhoc,
      String hk1 = "0.0",
      String hk2 = "0.0",
      String tong = "0.0"}) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(monhoc, textAlign: TextAlign.center),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(hk1, textAlign: TextAlign.center),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(hk2, textAlign: TextAlign.center),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(tong, textAlign: TextAlign.center),
        ),
      ],
    );
  }
}
