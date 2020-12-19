import 'package:Student/models/xeploai.dart';
import 'package:flutter/material.dart';

class XepLoaiScreen extends StatefulWidget {
  static final routeName = "/xeploai";
  @override
  _XepLoaiScreenState createState() => _XepLoaiScreenState();
}

class _XepLoaiScreenState extends State<XepLoaiScreen> {
  @override
  Widget build(BuildContext context) {
    final xeploai = Xeploai.fakeOne();
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: new AppBar(
        iconTheme: IconThemeData(color: Colors.amber),
        backgroundColor: Colors.cyan[700],
        title: new Text(
          "Xếp Loại",
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
                  'HK1: 2019_2020',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
            ),
            buildTable(3),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  'HK2: 2019_2020',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
            ),
            buildTable1(3),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  'Cả Năm: 2019_2020',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
            ),
            buildTable2(3),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  'Nhận xét của giáo viên',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  xeploai.nxet,
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTable(int numRows) {
    final xeploai = Xeploai.fakeOne();
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        color: Colors.white,
        child: Table(
          border: TableBorder.all(),
          columnWidths: {
            0: FlexColumnWidth(3),
            1: FlexColumnWidth(4),
            2: FlexColumnWidth(4),
          },
          children: [
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    'ĐTBCN',
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    'Hạnh Kiểm',
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    'Học Lực',
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
                    xeploai.dtb1.toString(),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    xeploai.hkiem1,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    xeploai.hluc1,
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
    final xeploai = Xeploai.fakeOne();
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        color: Colors.white,
        child: Table(
          border: TableBorder.all(),
          columnWidths: {
            0: FlexColumnWidth(3),
            1: FlexColumnWidth(4),
            2: FlexColumnWidth(4),
          },
          children: [
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    'ĐTBCN',
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    'Hạnh Kiểm',
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    'Học Lực',
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
                    xeploai.dtb2.toString(),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    xeploai.hkiem2,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    xeploai.hluc2,
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
    final xeploai = Xeploai.fakeOne();
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        color: Colors.white,
        child: Table(
          border: TableBorder.all(),
          columnWidths: {
            0: FlexColumnWidth(3),
            1: FlexColumnWidth(4),
            2: FlexColumnWidth(4),
          },
          children: [
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    'ĐTBCN',
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    'Hạnh Kiểm',
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    'Học Lực',
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
                    xeploai.dtb.toString(),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    xeploai.hkiem,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    xeploai.hluc,
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
