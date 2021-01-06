class Toan {
  String cauhoi1;
  String dapana;
  String dapanb;
  String dapanc;

  String cauhoi2;
  String dapana2;
  String dapanb2;
  String dapanc2;

  String cauhoi3;
  String dapana3;
  String dapanb3;
  String dapanc3;

  String cauhoi4;
  String dapana4;
  String dapanb4;
  String dapanc4;

  String cauhoi5;
  String dapana5;
  String dapanb5;
  String dapanc5;
  Toan({
    this.cauhoi1,
    this.dapana,
    this.dapanb,
    this.dapanc,
    this.cauhoi2,
    this.dapana2,
    this.dapanb2,
    this.dapanc2,
    this.cauhoi3,
    this.dapana3,
    this.dapanb3,
    this.dapanc3,
    this.cauhoi4,
    this.dapana4,
    this.dapanb4,
    this.dapanc4,
    this.cauhoi5,
    this.dapana5,
    this.dapanb5,
    this.dapanc5,
  });
  static Toan fakeOne() {
    return Toan(
      cauhoi1: "ABC",
      dapana: "A",
      dapanb: "C",
      dapanc: "D",
    );
  }

  static List<Toan> fakeMany() {
    return List.generate(
      3,
      (index) => Toan.fakeOne(),
    );
  }
}
