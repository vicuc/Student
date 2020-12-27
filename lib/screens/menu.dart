
import 'package:Student/models/thongtin.dart';
import 'package:Student/screens/Screen.dart';
import 'package:Student/screens/xeploai.dart';
import 'package:Student/services/loginService.dart';
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
  List _nkhoa = ['2019-2020', '2020-2021', '2022-2023'];
  String _nkhoaVal;
  List _className = ['10A1', '11A1', '12A1'];
  String _classVal;
  List _hky = ['1', '2', 'Cả năm'];
  String _hkyVal;

    //Login Service
  var _loginService = LoginService();
  
  //var _khoi = Khoi();
  var _KhoiServe = MeNu();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan[200],
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
        ListTile(
          onTap: () {},
          leading: Icon(
            Icons.dns,
            color: Colors.black,
          ),
          title: DropdownButton(
            hint: Text("Lớp", style: Theme.of(context).textTheme.subtitle1),
            dropdownColor: Colors.cyan[700],
            elevation: 3,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 36.0,
            isExpanded: true,
            value: _classVal,
            style: TextStyle(color: Colors.black, fontSize: 20.0),
            onChanged: (value) {
              setState(() {
                _classVal = value;
              });
            },
            items: _className.map((value) {
              return DropdownMenuItem(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(
            Icons.view_list,
            color: Colors.black,
          ),
          title: DropdownButton(
            hint: Text("Học Kỳ", style: Theme.of(context).textTheme.subtitle1),
            dropdownColor: Colors.cyan[700],
            elevation: 3,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 36.0,
            isExpanded: true,
            value: _hkyVal,
            style: TextStyle(color: Colors.black, fontSize: 20.0),
            onChanged: (value) {
              setState(() {
                _hkyVal = value;
              });
            },
            items: _hky.map((value) {
              return DropdownMenuItem(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(
            Icons.clear_all,
            color: Colors.black,
          ),
          title: DropdownButton(
            hint:
                Text("Niên Khóa", style: Theme.of(context).textTheme.subtitle1),
            dropdownColor: Colors.cyan[700],
            elevation: 3,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 36.0,
            isExpanded: true,
            value: _nkhoaVal,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
            onChanged: (value) {
              setState(() {
                _nkhoaVal = value;
              });
            },
            items: _nkhoa.map((value) {
              return DropdownMenuItem(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        RaisedButton(
            child: Text("Tiếp theo"),
            color: Colors.cyan[300],
            onPressed: () {
              Navigator.of(context).pushNamed(XepLoaiScreen.routeName);
            }),
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
    );
  }
    void _onclickLogout() async{
      _loginService.signOut();
      Navigator.of(context).push(MaterialPageRoute(builder:(context) => Screen()));
    }
}
