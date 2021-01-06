import 'package:Student/models/tracnghiemanh.dart';
import 'package:flutter/material.dart';

class CauHoiAnh4 extends StatefulWidget {
  @override
  _CauHoiAnh4State createState() => _CauHoiAnh4State();
}

class _CauHoiAnh4State extends State<CauHoiAnh4> {
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
          Text(anh.cauhoi10, style: TextStyle(fontSize: 22.0)),
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
                Text(anh.dapana10,
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
                Text(anh.dapanb10,
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
                Text(anh.dapanc10,
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
          Text(anh.cauhoi11, style: TextStyle(fontSize: 22.0)),
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
                Text(anh.dapana11,
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
                Text(anh.dapanb11,
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
                Text(anh.dapanc11,
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
          Text(anh.cauhoi12, style: TextStyle(fontSize: 22.0)),
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
                Text(anh.dapana12,
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
                Text(anh.dapanb12,
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
                Text(anh.dapanc12,
                    style: TextStyle(
                      fontSize: 20.0,
                    )),
              ],
            ),
          ),
        ],
      );
}
