import 'package:Student/models/baigiang.dart';
import 'package:Student/screens/xeploai.dart';
import 'package:flutter/material.dart';
import 'package:Student/screens/thongtin.dart';

class MeNu extends StatefulWidget {
  static final routeName = "/thongtin";
  @override
  _MeNuState createState() => _MeNuState();
}

class _MeNuState extends State<MeNu> {
  String title = 'DropDownButton';
  var _khoi = Khoi();
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
                  "Cao Thị Thúy Vi",
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
            Navigator.of(context).pushNamed(ThongTinScreen.routeName);
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
            })
      ]),
    );
  }
}
