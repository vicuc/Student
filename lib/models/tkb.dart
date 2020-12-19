class Tkb {
  String tiet1;
  String tiet2;
  String tiet3;
  String tiet4;
  String tiet5;
  String tiet6;
  Tkb({
    this.tiet1,
    this.tiet2,
    this.tiet3,
    this.tiet4,
    this.tiet5,
    this.tiet6,
  });
  static Tkb fakeOne() {
    return Tkb(
      tiet1: "Toán",
      tiet2: "Toán",
      tiet3: "Anh văn",
      tiet4: "Lý",
      tiet5: "Chào cờ",
      tiet6: "Thể Dục",
    );
  }

  static List<Tkb> fakeMany() {
    return List.generate(
      5,
      (index) => Tkb.fakeOne(),
    );
  }
}
