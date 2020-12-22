class BaiGiang {
  int baigiangId;
  String baigiangTen;
  baigiangMap() {
    var mapping = Map<String, dynamic>();
    mapping['baigiangId'] = baigiangId;
    mapping['baigiangTen'] = baigiangTen;
    return mapping;
  }
  String bg_id;
  String bg_ten;
  String mh_id;

  BaiGiang({
    this.bg_ten,
    this.mh_id,
    this.bg_id,
  });

  @override
  BaiGiang.fromJson(Map<String, dynamic> json, String id) {
    this.bg_id=id;
    this.bg_ten = json['bg_ten'];
    this.mh_id=json['mh_id'];
  }
}
