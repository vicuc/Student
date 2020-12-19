import 'package:Student/models/dapananh.dart';
import 'package:flutter/material.dart';

class DapananhScreen extends StatefulWidget {
  static final routeName = "/dapananh";
  @override
  _DapananhScreenState createState() => _DapananhScreenState();
}

class _DapananhScreenState extends State<DapananhScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: new AppBar(
        iconTheme: IconThemeData(color: Colors.amber),
        backgroundColor: Colors.cyan[700],
        title: new Text(
          "Đáp án",
          style: TextStyle(fontSize: 19.0, color: Colors.amber),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  'Bài 1',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
            ),
            buildTable(3),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  'Bài 2',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
            ),
            buildTable1(3),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  'Bài 3',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
            ),
            buildTable2(3),
          ],
        ),
      ),
    );
  }

  Widget buildTable(int numRows) {
    final dapananh = Dapan.fakeOne();
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        color: Colors.white,
        child: Table(
          border: TableBorder.all(),
          columnWidths: {
            0: FlexColumnWidth(3),
            1: FlexColumnWidth(3),
            2: FlexColumnWidth(3),
          },
          children: [
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    dapananh.cauhoi1,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    dapananh.cauhoi2,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    dapananh.cauhoi3,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    dapananh.dapan1,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    dapananh.dapan2,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    dapananh.dapan3,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTable1(int numRows) {
    final dapananh = Dapan.fakeOne();
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        color: Colors.white,
        child: Table(
          border: TableBorder.all(),
          columnWidths: {
            0: FlexColumnWidth(3),
            1: FlexColumnWidth(3),
            2: FlexColumnWidth(3),
          },
          children: [
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    dapananh.cauhoi1,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    dapananh.cauhoi1,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    dapananh.cauhoi1,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    dapananh.dapan1,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    dapananh.dapan1,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    dapananh.dapan1,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTable2(int numRows) {
    final dapananh = Dapan.fakeOne();
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        color: Colors.white,
        child: Table(
          border: TableBorder.all(),
          columnWidths: {
            0: FlexColumnWidth(3),
            1: FlexColumnWidth(3),
            2: FlexColumnWidth(3),
          },
          children: [
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    dapananh.cauhoi4,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    dapananh.cauhoi5,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    dapananh.cauhoi6,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    dapananh.dapan4,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    dapananh.dapan5,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    dapananh.dapan6,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
