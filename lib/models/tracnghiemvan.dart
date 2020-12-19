class Van {
  String cauhoi1;
  String dapana;
  String dapanb;
  String dapanc;
  Van({
    this.cauhoi1,
    this.dapana,
    this.dapanb,
    this.dapanc,
  });
  static Van fakeOne() {
    return Van(
      cauhoi1:
          "Quá trình phát của văn học Việt Nam từ cách mạng tháng Tám năm 1945 đến năm 1975 trải qua mất chặng đường chính ?",
      dapana: "2",
      dapanb: "3",
      dapanc: "4",
    );
  }

  static List<Van> fakeMany() {
    return List.generate(
      3,
      (index) => Van.fakeOne(),
    );
  }
}
