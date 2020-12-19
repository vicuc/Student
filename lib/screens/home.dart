import 'package:Student/screens/baitap.dart';
import 'package:Student/screens/bangdiem.dart';
import 'package:Student/screens/dethi.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Student/screens/menu.dart';

class HomeScreen extends StatefulWidget {
  static final routeName = "/home";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        title: Text(
          "Trang chủ",
          style: TextStyle(color: Colors.amber),
        ),
        iconTheme: IconThemeData(
          color: Colors.amber,
        ),
      ),
      backgroundColor: Colors.cyan[100],
      body: SafeArea(
        child: Container(
          color: Colors.cyan[300],
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 38,
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/originals/01/48/0f/01480f29ce376005edcbec0b30cf367d.jpg'),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              GridDashboard()
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: MeNu(),
      ),
    );
  }
}

class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "Bài Giảng",
      subtitile: "Giáo viên đã cập nhật",
      event: "3 bài chưa xem",
      image: "assets/baigiang.png",
      routeName: "/baigiang");

  Items item2 = new Items(
      title: "Môn Học",
      subtitile: "Tổng cộng: 12 môn",
      event: "....",
      image: "assets/monhoc.png",
      routeName: "/monhoc");

  Items item3 = new Items(
      title: "Thời Khóa Biểu",
      subtitile: "Áp dụng từ tuần đầu của học kỳ",
      event: "",
      image: "assets/tkb.png",
      routeName: "/tkb");

  Items item4 = new Items(
      title: "Bảng Điểm",
      subtitile: "Điểm học tạp toàn khóa",
      event: "",
      image: "assets/score.png",
      routeName: BangDiemScreen.routeName);

  Items item5 = new Items(
      title: "Bài Tập Về Nhà",
      subtitile: "",
      event: "",
      image: "assets/xeploai.png",
      routeName: BaiTapScreen.routeName);

  Items item6 = new Items(
      title: "Đề Thi & Đáp Án",
      subtitile: "Đã cập nhật",
      event: "",
      image: "assets/dethi.png",
      routeName: DeThiScreen.routeName);

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xFF006064;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return InkWell(
              onTap: () {
                if (data.routeName != null) {
                  Navigator.of(context).pushNamed(
                    data.routeName,
                  );
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(color),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      data.image,
                      width: 42,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      data.title,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.amberAccent,
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      data.subtitile,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white38,
                              fontSize: 10,
                              fontWeight: FontWeight.w500)),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      data.event,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white10,
                              fontSize: 11,
                              fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String subtitile;
  String event;
  String image;
  String routeName;
  Items({this.title, this.subtitile, this.event, this.image, this.routeName});
}
