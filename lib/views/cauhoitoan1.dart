import 'package:Student/models/tracnghiemtoan.dart';
import 'package:flutter/material.dart';

class CauHoiToan1 extends StatefulWidget {
  @override
  _CauHoiToan1State createState() => _CauHoiToan1State();
}

class _CauHoiToan1State extends State<CauHoiToan1> {
  final toan = Toan.fakeOne();
  String colorGroupValue = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(toan.cauhoi1, style: TextStyle(fontSize: 21.0)),
        Container(
          width: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Radio(
                  value: 'Red',
                  groupValue: colorGroupValue,
                  onChanged: (val) {
                    colorGroupValue = val;
                    setState(() {});
                  }),
              Text(toan.dapana,
                  style: TextStyle(
                    fontSize: 20.0,
                  )),
            ],
          ),
        ),
        Container(
          width: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Radio(
                  value: 'Blue',
                  groupValue: colorGroupValue,
                  onChanged: (val) {
                    colorGroupValue = val;
                    setState(() {});
                  }),
              Text(toan.dapanb,
                  style: TextStyle(
                    fontSize: 20.0,
                  )),
            ],
          ),
        ),
        Container(
          width: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Radio(
                  value: 'Green',
                  groupValue: colorGroupValue,
                  onChanged: (val) {
                    colorGroupValue = val;
                    setState(() {});
                  }),
              Text(toan.dapanc,
                  style: TextStyle(
                    fontSize: 20.0,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
