
import 'package:Student/models/bangdiemcanhan.dart';
import 'package:Student/models/monhoc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BangDiemScreen extends StatefulWidget {
  final String hs_id;
  final String id_lop;
  static final routeName = "/bangdiem";

  const BangDiemScreen({Key key, this.hs_id, this.id_lop}) : super(key: key);
  @override
  _BangDiemScreenState createState() => _BangDiemScreenState();
}

class _BangDiemScreenState extends State<BangDiemScreen> {
  BangDiemCaNhan _diemCaNhan;
  Monhoc _monhoc;
  double _tongdiem = 0.0;
  int _tong = 0;
  _onClickDiem() {
    setState(() {});
  }

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
                ],
              ),
            ),
            StreamBuilder<QuerySnapshot>(
                stream: Firestore.instance.collection("subject").snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Image.asset("assets/loading.gif");
                  } else if (snapshot.data.documents == null ||
                      snapshot.data.documents.length == 0) {
                    return Container(
                      child: Text(
                        "Chưa có môn học!!!",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.blueGrey),
                      ),
                    );
                  } else {
                    var document = snapshot.data.documents.toList();
                    return Column(
                      children: document.map((e) {
                        _monhoc = Monhoc.fromJson(e.data, e.documentID);
                        return StreamBuilder<QuerySnapshot>(
                            stream: Firestore.instance
                                .collection("bangdiemcanhan")
                                .where("hs_id", isEqualTo: widget.hs_id)
                                .where("mh_id", isEqualTo: _monhoc.mh_id)
                                .where("l_id",isEqualTo: widget.id_lop)
                                .snapshots(),
                            builder: (context, snap) {
                              if (!snap.hasData) {
                                return Image.asset("assets/loading.gif");
                              } else if (snap.data.documents == null ||
                                  snap.data.documents.length == 0) {
                                return Container(
                                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(e.data["name"], textAlign: TextAlign.center),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text("Chưa cập nhật", textAlign: TextAlign.center),
                                          ),
                                        ]
                                  )
                                );
                              } else {
                                var doc = snap.data.documents.toList();
                                return Table(
                                    border: TableBorder(
                                      horizontalInside:
                                          BorderSide(color: Colors.black54),
                                    ),
                                    children: doc.map((element) {
                                      _diemCaNhan = BangDiemCaNhan.fromJson(
                                          element.data, element.documentID);
                                      _tongdiem = _tongdiem +
                                          double.parse(_diemCaNhan.diem_hk1) +
                                          double.parse(_diemCaNhan.diem_hk1);
                                      _tong = _tong + 1;
                                      return buildRow(
                                          _diemCaNhan, e.data['name']);
                                    }).toList());
                              }
                            });
                      }).toList(),
                    );
                  }
                }),
          ],
        ),
      ),
      bottomNavigationBar: _tong == 0
          ? Container(
              padding: EdgeInsets.symmetric(vertical: 25.0),
              width: 200,
              child: RaisedButton(
                elevation: 5.0,
                onPressed: _onClickDiem,
                padding: EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Colors.white)),
                color: Colors.blueAccent,
                child: Text(
                  'Xem ĐTB',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.5,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                  ),
                ),
              ),
            )
          : BottomAppBar(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child:buildTable(_tongdiem / 2 / _tong)
                )
          )
    );
  }

  TableRow buildRow(BangDiemCaNhan diemCaNhan, String monhoc) {
    double tong =
        double.parse(diemCaNhan.diem_hk1) + double.parse(diemCaNhan.diem_hk1);
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(monhoc, textAlign: TextAlign.center),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(diemCaNhan.diem_hk1, textAlign: TextAlign.center),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(diemCaNhan.diem_hk2, textAlign: TextAlign.center),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text((tong / 2).toStringAsFixed(2).toString(),
              textAlign: TextAlign.center),
        ),
      ],
    );
  }
}
Widget buildTable(double tb) {
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
                    tb.toStringAsFixed(2).toString(),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "Giỏi",
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    tb >= 8.0?"Giỏi" : (tb < 8.0 && tb >= 6.5)?"Khá":"Trung Bình",
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
