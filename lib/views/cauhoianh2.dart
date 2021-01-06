import 'package:Student/models/tracnghiemanh.dart';
import 'package:flutter/material.dart';

class CauHoiAnh2 extends StatefulWidget {
  @override
  _CauHoiAnh2State createState() => _CauHoiAnh2State();
}

class _CauHoiAnh2State extends State<CauHoiAnh2> {
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
          Text(anh.cauhoi4, style: TextStyle(fontSize: 22.0)),
          Container(
            width: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Radio(
                    value: anh.dapana4,
                    groupValue: colorGroupValue,
                    onChanged: (val) {
                      colorGroupValue = val;
                      setState(() {});
                    }),
                Text(anh.dapana4,
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
                    value: anh.dapanb4,
                    groupValue: colorGroupValue,
                    onChanged: (val) {
                      colorGroupValue = val;
                      setState(() {});
                    }),
                Text(anh.dapanb4,
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
                    value: anh.dapanc4,
                    groupValue: colorGroupValue,
                    onChanged: (val) {
                      colorGroupValue = val;
                      setState(() {});
                    }),
                Text(anh.dapanc4,
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
          Text(anh.cauhoi5, style: TextStyle(fontSize: 22.0)),
          Container(
            width: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Radio(
                    value: anh.dapana5,
                    groupValue: colorGroupValue,
                    onChanged: (val) {
                      colorGroupValue = val;
                      setState(() {});
                    }),
                Text(anh.dapana5,
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
                    value: anh.dapanb5,
                    groupValue: colorGroupValue,
                    onChanged: (val) {
                      colorGroupValue = val;
                      setState(() {});
                    }),
                Text(anh.dapanb5,
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
                    value: anh.dapanc5,
                    groupValue: colorGroupValue,
                    onChanged: (val) {
                      colorGroupValue = val;
                      setState(() {});
                    }),
                Text(anh.dapanc5,
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
          Text(anh.cauhoi6, style: TextStyle(fontSize: 22.0)),
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
                Text(anh.dapana6,
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
                Text(anh.dapanb6,
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
                Text(anh.dapanc6,
                    style: TextStyle(
                      fontSize: 20.0,
                    )),
              ],
            ),
          ),
        ],
      );
}
