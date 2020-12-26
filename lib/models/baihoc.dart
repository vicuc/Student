class BaiHoc {
  String bh_id;
  String bh_ten;
  String mh_id;
  String l_id;

  BaiHoc({
    this.bh_ten,
    this.mh_id,
    this.bh_id,
    this.l_id,
  });

  @override
  BaiHoc.fromJson(Map<String, dynamic> json, String id) {
    this.bh_id=id;
    this.bh_ten = json['bh_ten'];
    this.mh_id=json['mh_id'];
    this.l_id=json['l_id'];
  }
}
