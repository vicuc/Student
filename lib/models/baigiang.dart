class BaiGiang {
  int baigiangId;
  String baigiangTen;
  baigiangMap() {
    var mapping = Map<String, dynamic>();
    mapping['baigiangId'] = baigiangId;
    mapping['baigiangTen'] = baigiangTen;
    return mapping;
  }
}
