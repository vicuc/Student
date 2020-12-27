import 'package:Student/models/bangdiem.dart';
import 'package:Student/models/monhoc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BangDiemMonScreen extends StatefulWidget {
  final Monhoc mh;
  final String hs_id;
  static final routeName = "/bangdiemmon";

  const BangDiemMonScreen({Key key, this.mh, this.hs_id}) : super(key: key);
  @override
  _BangDiemMonScreenState createState() => _BangDiemMonScreenState();
}

class _BangDiemMonScreenState extends State<BangDiemMonScreen> {

  BangDiem _bangDiem;
  BangDiem _bd;
  int _tongdiem = 0;
  int _tongheso = 0;
  int _tongdiem2 = 0;
  int _tongheso2 = 0;
  double _diemtbhk = 0 ;
  double _diemtbhk2 = 0 ;
  String _nk='';
_onClickDapAn(){
  setState(() {
    
  });
}
  @override
  Widget build(BuildContext context) {
    String tenmonhoc = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: new AppBar(
        iconTheme: IconThemeData(color: Colors.amber),
        title: Row(
          children: [
            new Text(
              "Bảng Điểm ${widget.mh.mh_ten}",
              style: new TextStyle(fontSize: 19.0, color: Colors.amber),
            ),
          ],
        ),
        backgroundColor: Colors.cyan[900],
      ),
      body: Container(
        margin: EdgeInsets.all(5.0),
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
          border: Border.all(width: 2,color: Colors.grey[400]),
          boxShadow: [BoxShadow(color: Colors.grey[200],blurRadius: 5)],
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[50]
        ),
    child: SingleChildScrollView(
      child: Column(
        children: [
          _body("Loại Kiểm Tra", "Điểm", "Hệ Số","Học Kì",Colors.black,FontWeight.bold),
          StreamBuilder<QuerySnapshot>(
            stream: Firestore.instance.collection("bangdiem")
            .where("mh_id",isEqualTo: widget.mh.mh_id)
            .where("hs_id",isEqualTo: widget.hs_id)
            .orderBy("hk_ten",descending: false)
            .snapshots(),
            builder: (context, snapshot) {
               if (!snapshot.hasData){
              return Image.asset("assets/loading.gif");
            }
            else if (snapshot.data.documents == null || snapshot.data.documents.length == 0) {
              return Container(
                child: Text("Chưa cập nhật điểm!!!", 
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.blueGrey),),
              );
            } else {
               var document =snapshot.data.documents.toList();
               document.forEach((e) { 
                  _bd = BangDiem.fromJson(e.data, e.documentID);
                 if (_bd.hk_id == "Học kì 1") {
                    _tongdiem = _tongdiem + (int.parse(_bd.bd_diem)*int.parse(_bd.bd_hs));
                    _tongheso = _tongheso + int.parse(_bd.bd_hs);
                  } else if (_bd.hk_id == "Học kì 2") {
                    _tongdiem2 = _tongdiem2 + (int.parse(_bd.bd_diem)*int.parse(_bd.bd_hs));
                    _tongheso2 = _tongheso2 + int.parse(_bd.bd_hs);
                  }
                   _diemtbhk = (_tongdiem /_tongheso);
                  _diemtbhk2 = (_tongdiem2 /_tongheso2);
               });
              _nk = document.first.data['nk_ten'];
              return Column(
                children: document.map((element) {
                   _bangDiem = BangDiem.fromJson(element.data, element.documentID);
                  return  _body(_bangDiem.lkt_id, _bangDiem.bd_diem, _bangDiem.bd_hs
                  ,_bangDiem.hk_id,Colors.black,FontWeight.normal);
                }
                ).toList(),
              );
            }
          }
        ),
          _diemtbhk == 0 && _diemtbhk2 == 0 ?Container(
                      padding: EdgeInsets.symmetric(vertical: 25.0),
                      width: 200,
                      child: RaisedButton(
                        elevation: 5.0,
                        onPressed: _onClickDapAn,
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
            ): Container(),
          _nk.length != 0? Container(
            margin: EdgeInsets.all(8.0),
            alignment: Alignment.topLeft,
            child: Text("Niên Khóa " + _nk,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blueGrey[900]),),
          ):Container(),
          _diemtbhk !=0 ? Container(
            margin: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("ĐTB Học kì 1: ",
                style: TextStyle(fontSize: 20,),),
                Text(_diemtbhk.toStringAsFixed(2).toString(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
              ],
            ),
          ): Container(),
          _diemtbhk !=0 ? Container(
            margin: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("ĐTB Học kì 2: ",
                style: TextStyle(fontSize: 20),),
                Text(_diemtbhk2.toStringAsFixed(2).toString(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
              ],
            ),
          ): Container()
        ],
      ),
    ))
    );
  }
Widget _body(String type, String point, String number, String hk, Color color, FontWeight fontWeight){
  return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 130,
          height: 70,
          padding: EdgeInsets.all(8.0),
           decoration: BoxDecoration(
            border: Border(
              right: BorderSide(
                width: 1,color: Colors.grey[700]
              ),
              bottom: BorderSide(
                width: 1,color: Colors.grey[700]
              )
            ),
          ),
          child: Text(type, style: TextStyle(
            fontSize: 18,
            color:color,
            fontWeight: fontWeight 
            ),
          ),
        ),
         Container(
          width: 70,
          height: 70,
          padding: EdgeInsets.all(8.0),
           decoration: BoxDecoration(
            border: Border(
              right: BorderSide(
                width: 1,color: Colors.grey[700]
              ),
              bottom: BorderSide(
                width: 1,color: Colors.grey[700]
              )
            ),
          ),
          child: Text(point, style: TextStyle(
            fontSize: 18,
            color:color,
            fontWeight: fontWeight 
            ),
          ),
        ),
         Container(
           width: 70,
           height: 70,
           padding: EdgeInsets.all(8.0),
           decoration: BoxDecoration(
            border: Border(
              right: BorderSide(
                width: 1,color: Colors.grey[700]
              ),
              bottom: BorderSide(
                width: 1,color: Colors.grey[700]
              )
            ),
          ),
          child: Text(number, style: TextStyle(
            fontSize: 18,
            color:color,
            fontWeight: fontWeight 
            ),
          ),
        ),
        Container(
          width: 70,
          height: 70,
           padding: EdgeInsets.all(8.0),
           decoration: BoxDecoration(
            border: Border(
              right: BorderSide(
                width: 1,color: Colors.grey[700]
              ),
              bottom: BorderSide(
                width: 1,color: Colors.grey[700]
              )
            ),
          ),
          child: Text(hk, style: TextStyle(
            fontSize: 18,
            color:color,
            fontWeight: fontWeight 
            ),
          ),
        ),
      ],
  );
}
}
