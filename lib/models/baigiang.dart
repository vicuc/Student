class BaiGiang {
  String bh_id;
  String bg_ten;
  String bg_id;
  String bg_noidung;
  String bg_video;

  BaiGiang({
    this.bg_ten,
    this.bh_id,
    this.bg_id,
    this.bg_noidung,
    this.bg_video
  });

  @override
  BaiGiang.fromJson(Map<String, dynamic> json, String id) {
    this.bg_id=id;
    this.bg_ten = json['bg_ten'];
    this.bh_id=json['bg_id'];
    this.bg_noidung=json['bg_noidung'];
    this.bg_video = json['bg_video'];
  }
}