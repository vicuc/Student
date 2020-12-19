class Xeploai {
  double dtb1;
  String hkiem1;
  String hluc1;

  double dtb2;
  String hkiem2;
  String hluc2;

  double dtb;
  String hkiem;
  String hluc;

  String nxet;

  Xeploai({
    this.dtb1,
    this.hkiem1,
    this.hluc1,
    this.dtb2,
    this.hkiem2,
    this.hluc2,
    this.dtb,
    this.hkiem,
    this.hluc,
    this.nxet,
  });
  static Xeploai fakeOne() {
    return Xeploai(
      dtb1: 8.0,
      hkiem1: "Tốt",
      hluc1: "Giỏi",
      dtb2: 8.7,
      hkiem2: "Tốt",
      hluc2: "Giỏi",
      dtb: 8.5,
      hkiem: "Tốt",
      hluc: "Giỏi",
      nxet: "Giỏi, có nhiều cố gắng trong học tập",
    );
  }

  static List<Xeploai> fakeMany() {
    return List.generate(
      3,
      (index) => Xeploai.fakeOne(),
    );
  }
}
