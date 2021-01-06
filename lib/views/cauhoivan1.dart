import 'package:Student/models/tracnghiemvan.dart';
import 'package:flutter/material.dart';

class CauHoiVan1 extends StatefulWidget {
  @override
  _CauHoiVan1State createState() => _CauHoiVan1State();
}

class _CauHoiVan1State extends State<CauHoiVan1> {
  final van = Van.fakeOne();
  String colorGroupValue = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(van.cauhoi1, style: TextStyle(fontSize: 21.0)),
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
              Text(van.dapana,
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
              Text(van.dapanb,
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
              Text(van.dapanc,
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
