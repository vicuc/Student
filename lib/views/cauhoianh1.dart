import 'package:Student/models/tracnghiemanh.dart';
import 'package:flutter/material.dart';

class CauHoiAnh1 extends StatefulWidget {
  @override
  _CauHoiAnh1State createState() => _CauHoiAnh1State();
}

class _CauHoiAnh1State extends State<CauHoiAnh1> {
  final anh = Anh.fakeOne();
  String colorGroupValue = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildA(),
        _buildA1(),
        _buildA2(),
      ],
    );
  }

  Widget _buildA() => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(anh.cauhoi1, style: TextStyle(fontSize: 21.0)),
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
                Text(anh.dapana,
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
                Text(anh.dapanb,
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
                Text(anh.dapanc,
                    style: TextStyle(
                      fontSize: 20.0,
                    )),
              ],
            ),
          ),
        ],
      );
  Widget _buildA1() => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(anh.cauhoi2, style: TextStyle(fontSize: 21.0)),
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
                Text(anh.dapana2,
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
                Text(anh.dapanb2,
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
                Text(anh.dapanc2,
                    style: TextStyle(
                      fontSize: 20.0,
                    )),
              ],
            ),
          ),
        ],
      );
  Widget _buildA2() => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(anh.cauhoi3, style: TextStyle(fontSize: 21.0)),
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
                Text(anh.dapana3,
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
                Text(anh.dapanb3,
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
                Text(anh.dapanc3,
                    style: TextStyle(
                      fontSize: 20.0,
                    )),
              ],
            ),
          ),
        ],
      );
}
