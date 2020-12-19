import 'package:Student/models/tracnghiemanh.dart';
import 'package:flutter/material.dart';

class CauHoiAnh3 extends StatefulWidget {
  @override
  _CauHoiAnh3State createState() => _CauHoiAnh3State();
}

class _CauHoiAnh3State extends State<CauHoiAnh3> {
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
          Text(anh.cauhoi7, style: TextStyle(fontSize: 22.0)),
          Container(
            width: 250,
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
                Text(anh.dapana7,
                    style: TextStyle(
                      fontSize: 20.0,
                    )),
              ],
            ),
          ),
          Container(
            width: 250,
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
                Text(anh.dapanb7,
                    style: TextStyle(
                      fontSize: 20.0,
                    )),
              ],
            ),
          ),
          Container(
            width: 250,
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
                Text(anh.dapanc7,
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
          Text(anh.cauhoi8, style: TextStyle(fontSize: 22.0)),
          Container(
            width: 250,
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
                Text(anh.dapana8,
                    style: TextStyle(
                      fontSize: 20.0,
                    )),
              ],
            ),
          ),
          Container(
            width: 250,
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
                Text(anh.dapanb8,
                    style: TextStyle(
                      fontSize: 20.0,
                    )),
              ],
            ),
          ),
          Container(
            width: 250,
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
                Text(anh.dapanc8,
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
          Text(anh.cauhoi9, style: TextStyle(fontSize: 22.0)),
          Container(
            width: 250,
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
                Text(anh.dapana9,
                    style: TextStyle(
                      fontSize: 20.0,
                    )),
              ],
            ),
          ),
          Container(
            width: 250,
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
                Text(anh.dapanb9,
                    style: TextStyle(
                      fontSize: 20.0,
                    )),
              ],
            ),
          ),
          Container(
            width: 250,
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
                Text(anh.dapanc9,
                    style: TextStyle(
                      fontSize: 20.0,
                    )),
              ],
            ),
          ),
        ],
      );
}
