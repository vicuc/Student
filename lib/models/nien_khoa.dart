class NienKhoa {
  String id;
  String ten;
  String lop;
  NienKhoa({this.id, this.ten, this.lop});
  static void getAll() {}
  void setTen(String value) {}
}

class Test {
  void test() {
    NienKhoa.getAll();
    final nienkhoa = NienKhoa();
    nienkhoa.setTen("value");
  }
}
