
import 'package:Student/models/baihoc.dart';
import 'package:Student/models/baitapvenha.dart';
import 'package:Student/models/dapan.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class DeScreen extends StatefulWidget {
  static final routeName = "/de";
  final BaiHoc bh;

  const DeScreen({Key key, this.bh}) : super(key: key);
  @override
  _DeScreenState createState() => _DeScreenState();
}

class _DeScreenState extends State<DeScreen> {
  BaiTapVeNha _baiTapVeNha;
  var colorGroupValue = '' ;
  bool status = false;
  DapAn _dapAn;
  @override
  Widget build(BuildContext context) {
    String tenbai = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: new AppBar(
        iconTheme: IconThemeData(color: Colors.amber),
        title: Row(
          children: [
            new Text(
              "Câu hỏi ${widget.bh.bh_ten}",
              style: new TextStyle(fontSize: 19.0, color: Colors.amber),
            ),
          ],
        ),
        backgroundColor: Colors.cyan[900],
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream: Firestore.instance.collection("cauhoi")
          .where('bh_id',isEqualTo: widget.bh.bh_id)
          .snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Image.asset("assets/loading.gif");
            } else if (snapshot.data.documents == null || snapshot.data.documents.length == 0) {
              return Text(
                "Chưa cập nhật câu hỏi cho bài tập này",
                style: new TextStyle(fontSize: 19.0, color: Colors.amber),
              );
            } else {
              int i = 0;
              int x =0;
              return SingleChildScrollView(
                child: Column(
                  children: [
                    new Container(
                      child: new Column(
                        children:
                            snapshot.data.documents.map((DocumentSnapshot document) {
                          i = i + 1;
                          _baiTapVeNha = BaiTapVeNha.fromJson(
                              document.data, document.documentID);
                          return cauhoi(_baiTapVeNha, i);
                        }).toList(),
                      ),
                    ),
                    status == false? Container(
                      padding: EdgeInsets.symmetric(vertical: 25.0),
                      width: 200,
                      child: RaisedButton(
                        elevation: 5.0,
                        onPressed: onClickDapAn,
                        padding: EdgeInsets.all(10.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide(color: Colors.white)),
                        color: Colors.blueAccent,
                        child: Text(
                          'Xem Kết Quả',
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1.5,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'OpenSans',
                          ),
                        ),
                      ),
                    ): Container(
                      margin: EdgeInsets.fromLTRB(8, 10, 8, 5),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1,color: Colors.grey[400]),
                          boxShadow: [BoxShadow(color: Colors.grey[200],blurRadius: 5)],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[50]
                        ),
                      padding: EdgeInsets.all(10),
                      child: new Column(
                        children:
                            snapshot.data.documents.map((DocumentSnapshot document) {
                          x = x + 1;
                          _baiTapVeNha = BaiTapVeNha.fromJson(
                              document.data, document.documentID);
                          return dapan(_baiTapVeNha.ch_id, x);
                        }).toList(),
                      ),
                     )
                  ],
                ),
              );
            }
          }),
    );
  }

  void onClickDapAn (){
    setState(() {
      status = true;
    });
  }

  Widget cauhoi(BaiTapVeNha baiTapVeNha, int index) {
    var ch = baiTapVeNha.ch_noidung;
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            "Câu $index " + baiTapVeNha.ch_ten,
            style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500),
          ),
        ),
         RadioButtonGroup(
                labels:ch,
                 itemBuilder: (Radio radioButton, Text label, int index) {
                return Row(children: [radioButton, Flexible(child: label)]);
              }
          ),
      ],
    );
  }
  Widget dapan(String idch, int index){
    return 
        StreamBuilder<DocumentSnapshot>(
          stream: Firestore.instance.collection("dapan").document(idch).snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
                  return Image.asset("assets/loading.gif");
            } else if (snapshot.data.data== null || snapshot.data.data.length == 0) {
              return Text(
                "Chưa cập nhật đáp án cho bài tập này",
                style: new TextStyle(fontSize: 19.0, color: Colors.amber),
              );
            } else {
              _dapAn = DapAn.fromJson(snapshot.data.data, snapshot.data.documentID);
              //return Text("data");
               return  Column(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                       children: [
                         SizedBox(height: 10,),
                         Padding(
                           padding: const EdgeInsets.all(5.0),
                           child: Text("Câu $index" + _dapAn.da_ten,
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                         ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("Ghi chú: "+ _dapAn.da_ghichu, style: TextStyle(fontSize: 16),),
                        )
                       ],
               );
            }
          }
    );
  }
}
