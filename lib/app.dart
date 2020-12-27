// import 'package:Student/providers/user_provider.dart';
import 'package:Student/screens/Screen.dart';
import 'package:Student/screens/THPT.dart';
import 'package:Student/screens/baigiang.dart';
import 'package:Student/screens/baigiangchitiet.dart';
import 'package:Student/screens/baitap.dart';
import 'package:Student/screens/de.dart';
import 'package:Student/screens/dethi.dart';
import 'package:Student/screens/tkb.dart';
import 'package:Student/screens/xeploai.dart';
import 'package:flutter/material.dart';
import 'package:Student/screens/home.dart';
import 'package:Student/screens/monhoc.dart';
import 'package:Student/screens/bangdiem.dart';
import 'package:Student/screens/thongtin.dart';
import 'package:Student/screens/bangdiemmon.dart';
import 'package:Student/screens/dethimon.dart';
import 'package:Student/screens/baitapchitiet.dart';
// import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/",
      routes: {
        "/" :(context) => Screen(),
        "/home": (context) => HomeScreen(),
        "/monhoc": (context) => MonHocScreen(),
        "/tkb": (context) => TkbScreen(),
        "/bangdiem": (context) => BangDiemScreen(),
        "/bangdiemmon": (context) => BangDiemMonScreen(),
        "/thongtin": (context) => ThongTinScreen(),
        "/dethi": (context) => DeThiScreen(),
        "/THPT": (context) => THPTScreen(),
        "/dethimon": (context) => DeThiMonScreen(),
        "/baigiang": (context) => BaiGiangScreen(),
        "/baigiangchitiet": (context) => BaiGiangChiTietScreen(),
        "/xeploai": (context) => XepLoaiScreen(),
        "/baitap": (context) => BaiTapScreen(),
        "/baitapchitiet": (context) => BaiTapChiTietScreen(),
        "/de": (context) => DeScreen(),
      },
    );
  }
}
