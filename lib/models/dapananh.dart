class Dapan {
  String cauhoi1;
  String dapan1;

  String cauhoi2;
  String dapan2;

  String cauhoi3;
  String dapan3;

  String cauhoi4;
  String dapan4;

  String cauhoi5;
  String dapan5;

  String cauhoi6;
  String dapan6;

  String cauhoi7;
  String dapan7;

  String cauhoi8;
  String dapan8;

  String cauhoi9;
  String dapan9;

  String cauhoi10;
  String dapan10;

  String cauhoi11;
  String dapan11;

  String cauhoi12;
  String dapan12;

  String cauhoi13;
  String dapan13;

  String cauhoi14;
  String dapan14;

  String cauhoi15;
  String dapan15;

  String cauhoi16;
  String dapan16;

  String cauhoi17;
  String dapan17;

  String cauhoi18;
  String dapan18;

  String cauhoi19;
  String dapan19;

  String cauhoi20;
  String dapan20;

  String cauhoi21;
  String dapan21;

  String cauhoi22;
  String dapan22;

  String cauhoi23;
  String dapan23;

  String cauhoi24;
  String dapan24;

  Dapan({
    this.cauhoi1,
    this.dapan1,
    this.cauhoi2,
    this.dapan2,
    this.cauhoi3,
    this.dapan3,
    this.cauhoi4,
    this.dapan4,
    this.cauhoi5,
    this.dapan5,
    this.cauhoi6,
    this.dapan6,
    this.cauhoi7,
    this.dapan7,
    this.cauhoi8,
    this.dapan8,
    this.cauhoi9,
    this.dapan9,
    this.cauhoi10,
    this.dapan10,
    this.cauhoi11,
    this.dapan11,
    this.cauhoi12,
    this.dapan12,
    this.cauhoi13,
    this.dapan13,
    this.cauhoi14,
    this.dapan14,
    this.cauhoi15,
    this.dapan15,
    this.cauhoi16,
    this.dapan16,
    this.cauhoi17,
    this.dapan17,
    this.cauhoi18,
    this.dapan18,
    this.cauhoi19,
    this.dapan19,
    this.cauhoi20,
    this.dapan20,
    this.cauhoi21,
    this.dapan21,
    this.cauhoi22,
    this.dapan22,
    this.cauhoi23,
    this.dapan23,
    this.cauhoi24,
    this.dapan24,
  });
  static Dapan fakeOne() {
    return Dapan(
      //Bai1
      cauhoi1: "1",
      dapan1: "B",

      cauhoi2: "2",
      dapan2: "C",

      cauhoi3: "3",
      dapan3: "C",
      //Bai2
      cauhoi4: "4",
      dapan4: "C",

      cauhoi5: "5",
      dapan5: "C",

      cauhoi6: "6",
      dapan6: "B",
      //Bai3
      cauhoi7: "7",
      dapan7: "B",

      cauhoi8: "8",
      dapan8: "A",

      cauhoi9: "9",
      dapan9: "A",
      //Bai4
      cauhoi10: "10",
      dapan10: "B",

      cauhoi11: "11",
      dapan11: "C",

      cauhoi12: "12",
      dapan12: "A",
      //Bai5
      cauhoi13: "13",
      dapan13: "B",

      cauhoi14: "14",
      dapan14: "A",

      cauhoi15: "15",
      dapan15: "B",
      //Bai6
      cauhoi16: "16",
      dapan16: "B",

      cauhoi17: "17",
      dapan17: "B",

      cauhoi18: "18",
      dapan18: "A",
      //Bai7
      cauhoi19: "19",
      dapan19: "B",

      cauhoi20: "20",
      dapan20: "C",

      cauhoi21: "21",
      dapan21: "C",
      //Bai8
      cauhoi22: "22",
      dapan22: "B",

      cauhoi23: "23",
      dapan23: "C",

      cauhoi24: "24",
      dapan24: "B",
    );
  }

  static List<Dapan> fakeMany() {
    return List.generate(
      3,
      (index) => Dapan.fakeOne(),
    );
  }
}
