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

  static Thongtin fakeOne({String ten = "A"}) {
    return Thongtin(
      ten: ten,
      ngaysinh: "11/03/1998",
      gioitinh: "Nữ",
      tencha: "B",
      tenme: "C",
      diachi: "D",
      dthoai: "E",
      noisinh: "F",
    );
  }

  static List<Thongtin> fakeMany() {
    return List.generate(
      3,
      (index) => Thongtin.fakeOne(ten: "Hoc sinh $index"),
    );
  }
}
