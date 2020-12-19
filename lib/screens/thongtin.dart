import 'package:Student/models/thongtin.dart';
import 'package:flutter/material.dart';

class ThongTinScreen extends StatefulWidget {
  static final routeName = "/thongtin";
  @override
  _ThongTinScreenState createState() => _ThongTinScreenState();
}

class _ThongTinScreenState extends State<ThongTinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: new AppBar(
        iconTheme: IconThemeData(color: Colors.amber),
        backgroundColor: Colors.cyan[700],
        title: new Text(
          "Thông Tin Cá Nhân",
          style: TextStyle(fontSize: 19.0, color: Colors.amber),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  'Thông tin học sinh',
                ),
              ),
            ),
            buildTable(5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text('Thông tin gia đình'),
              ),
            ),
            buildTable1(5),
          ],
        ),
      ),
    );
  }

  Widget buildTable(int numRows) {
    final thongtin = Thongtin.fakeOne();
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
          color: Colors.white,
          child: Table(
            border: TableBorder.all(),
            columnWidths: {
              0: FlexColumnWidth(2),
              1: FlexColumnWidth(3),
            },
            children: [
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'Họ và tên:',
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Text(
                    thongtin.ten,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'Ngày sinh:',
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Text(
                    thongtin.ngaysinh,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'Giới tính:',
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Text(
                    thongtin.gioitinh,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          )),
    );
  }

  Widget buildTable1(int numRows) {
    final thongtin = Thongtin.fakeOne();
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
          color: Colors.white,
          child: Table(
            border: TableBorder.all(),
            columnWidths: {
              0: FlexColumnWidth(2),
              1: FlexColumnWidth(3),
            },
            children: [
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'Ông/Bà:',
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Text(
                    thongtin.tencha,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'Ông/Bà:',
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Text(
                    thongtin.tenme,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'Địa chỉ liên lạc:',
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Text(
                    thongtin.diachi,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'Số điện thoại:',
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Text(
                    thongtin.dthoai,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'Nơi sinh:',
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Text(
                    thongtin.noisinh,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
