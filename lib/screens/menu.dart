import 'package:Student/models/kiemtralichsu.dart';
import 'package:Student/models/thongtin.dart';
import 'package:Student/screens/Screen.dart';
import 'package:Student/screens/bangdiem.dart';
import 'package:Student/screens/xeploai.dart';
import 'package:Student/services/loginService.dart';
import 'package:Student/widget/MessageDialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:Student/screens/thongtin.dart';

class MeNu extends StatefulWidget {
  static final routeName = "/thongtin";
  final Thongtin user;

  const MeNu({Key key, this.user}) : super(key: key);
  @override
  _MeNuState createState() => _MeNuState();
}

class _MeNuState extends State<MeNu> {
  String title = 'DropDownButton';
  String _nkhoaVal;
  String _classVal;
  String _hkyVal;

  KiemTraLichTrinh _kiemTraLichTrinh = new KiemTraLichTrinh();

  //Login Service
  var _loginService = LoginService();

  //var _khoi = Khoi();
  var _KhoiServe = MeNu();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan[200],
      child: SingleChildScrollView(
        child: Column(children: [
          Container(
            child: Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: NetworkImage(
                        'https://i.pinimg.com/originals/01/48/0f/01480f29ce376005edcbec0b30cf367d.jpg'),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    widget.user.ten,
                    style: TextStyle(fontSize: 20.0),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ThongTinScreen(user: widget.user)));
            },
            leading: Icon(
              Icons.person,
              color: Colors.black,
            ),
            title: Text("Thông tin cá nhân",
                style: Theme.of(context).textTheme.bodyText1),
          ),
          Container(
            child: StreamBuilder<QuerySnapshot>(
              stream: Firestore.instance.collection('lop').snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Text("Đang tải....");
                } else {
                  List<DropdownMenuItem> lop = [];
                  for (int i = 0; i < snapshot.data.documents.length; i++) {
                    DocumentSnapshot snap = snapshot.data.documents[i];
                    lop.add(DropdownMenuItem(
                      child:
                          Text(snap['l_ten'], style: TextStyle(fontSize: 20)),
                      value: snap.documentID,
                    ));
                  }
                  return ListTile(
                    onTap: () {},
                    leading: Icon(
                      Icons.dns,
                      color: Colors.black,
                    ),
                    title: DropdownButton(
                      hint: Text("Lớp",
                          style: Theme.of(context).textTheme.subtitle1),
                      dropdownColor: Colors.cyan[700],
                      elevation: 3,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 36.0,
                      isExpanded: true,
                      items: lop,
                      onChanged: (tinhvalue) {
                        setState(() {
                          _classVal = tinhvalue;
                        });
                      },
                      //isExpanded: false,
                      value: _classVal,
                    ),
                  );
                }
              },
            ),
          ),
          // Container(
          //   child: StreamBuilder<QuerySnapshot>(
          //     stream: Firestore.instance.collection('hocki').snapshots(),
          //     builder: (context, snapshot) {
          //       if (!snapshot.hasData) {
          //         return Text("Đang tải....");
          //       } else {
          //         List<DropdownMenuItem> hk = [];
          //         for (int i = 0; i < snapshot.data.documents.length; i++) {
          //           DocumentSnapshot snap = snapshot.data.documents[i];
          //           hk.add(DropdownMenuItem(
          //             child:
          //                 Text(snap['hk_ten'], style: TextStyle(fontSize: 20)),
          //             value: snap.documentID,
          //           ));
          //         }
          //         return ListTile(
          //           leading: Icon(
          //             Icons.view_list,
          //             color: Colors.black,
          //           ),
          //           title: DropdownButton(
          //             hint: Text("Học Kì",
          //                 style: Theme.of(context).textTheme.subtitle1),
          //             dropdownColor: Colors.cyan[700],
          //             elevation: 3,
          //             icon: Icon(Icons.arrow_drop_down),
          //             iconSize: 36.0,
          //             isExpanded: true,
          //             items: hk,
          //             onChanged: (tinhvalue) {
          //               setState(() {
          //                 _hkyVal = tinhvalue;
          //               });
          //             },
          //             //isExpanded: false,
          //             value: _hkyVal,
          //           ),
          //         );
          //       }
          //     },
          //   ),
          // ),
          Container(
            child: StreamBuilder<QuerySnapshot>(
              stream: Firestore.instance.collection('niemkhoa').snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Text("Đang tải....");
                } else {
                  List<DropdownMenuItem> nk = [];
                  for (int i = 0; i < snapshot.data.documents.length; i++) {
                    DocumentSnapshot snap = snapshot.data.documents[i];
                    nk.add(DropdownMenuItem(
                      child:
                          Text(snap['nk_nam'], style: TextStyle(fontSize: 20)),
                      value: snap.documentID,
                    ));
                  }
                  return ListTile(
                    leading: Icon(
                      Icons.view_list,
                      color: Colors.black,
                    ),
                    title: DropdownButton(
                      hint: Text("Niên Khóa",
                          style: Theme.of(context).textTheme.subtitle1),
                      dropdownColor: Colors.cyan[700],
                      elevation: 3,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 36.0,
                      isExpanded: true,
                      items: nk,
                      onChanged: (tinhvalue) {
                        setState(() {
                          _nkhoaVal = tinhvalue;
                        });
                      },
                      //isExpanded: false,
                      value: _nkhoaVal,
                    ),
                  );
                }
              },
            ),
          ),
          RaisedButton(
              child: Text("Lịch Sử "),
              color: Colors.cyan[300],
              onPressed: _check),
          Container(
            padding: EdgeInsets.symmetric(vertical: 25.0),
            width: 200,
            child: RaisedButton(
              elevation: 5.0,
              onPressed: _onclickLogout,
              padding: EdgeInsets.all(10.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(color: Colors.white)),
              color: Colors.transparent,
              child: Text(
                'Đăng Xuất',
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
        ]),
      ),
    );
  }

  void _onclickLogout() async {
    _loginService.signOut();
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Screen()));
  }

  void _check() {
    Future<QuerySnapshot> _kt =
        _kiemTraLichTrinh.kiemtralichsu(widget.user.uid, _classVal, _nkhoaVal);
    _kt.then((value) {
      if (_classVal == null) {
        MsgDialognotPop.showMsgDialog(context, title, "Vui lòng chọn Lớp Học");
      } else if (_nkhoaVal == null) {
        MsgDialognotPop.showMsgDialog(
            context, title, "Vui lòng chọn Niên Khóa");
      } else if (value.documents.length == 0) {
        MsgDialognotPop.showMsgDialog(
            context, title, "Không có dữ liệu hợp lệ");
      } else {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => BangDiemScreen(
                      hs_id: widget.user.uid,
                      id_lop: _classVal,
                    )));
      }
      return;
    });
  }
}
