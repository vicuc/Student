class Thongtin {
  String ten;
  String ngaysinh;
  String gioitinh;
  String tencha;
  String tenme;
  String diachi;
  String dthoai;
  String noisinh;

  Thongtin({
    this.ten,
    this.ngaysinh,
    this.gioitinh,
    this.tencha,
    this.tenme,
    this.diachi,
    this.dthoai,
    this.noisinh,
  });

  @override
  Thongtin.fromJson(Map<String, dynamic> json, String uid) {
    this.ten=json['name'];
    this.dthoai=json['phone'];
    this.diachi = json['local'];
    this.gioitinh = json['sex'];
    this.ngaysinh = json['birthday'];
    this.noisinh = json['placebirth'];
    this.tencha = json['father'];
    this.tenme = json['mother'];
  }

  //=== Singleton Logged User ===//
  static Thongtin _loggedUser;
  static Thongtin getLoggedUser() {
    return _loggedUser;
  }
  static Thongtin logUser(Thongtin user) {
    _loggedUser = user;
    return _loggedUser;
  }
  static void outUser() {
    _loggedUser = null;
  }
  // static Thongtin fakeOne({String ten = "A"}) {
  //   return Thongtin(
  //     ten: ten,
  //     ngaysinh: "11/03/1998",
  //     gioitinh: "Nữ",
  //     tencha: "B",
  //     tenme: "C",
  //     diachi: "D",
  //     dthoai: "E",
  //     noisinh: "F",
  //   );
  // }

  // static List<Thongtin> fakeMany() {
  //   return List.generate(
  //     3,
  //     (index) => Thongtin.fakeOne(ten: "Hoc sinh $index"),
  //   );
  // }

}
