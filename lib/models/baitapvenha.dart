class BaiTapVeNha {
  String bh_id;
  String ch_ten;
   List<String> ch_noidung;
  String ch_id;

  BaiTapVeNha({
    this.ch_ten,
    this.bh_id,
    this.ch_id,
    this.ch_noidung,
  });

  @override
  BaiTapVeNha.fromJson(Map<String, dynamic> json, String id) {
    this.ch_id=id;
    this.ch_ten = json['ch_ten'];
    this.bh_id=json['bh_id'];
    this.ch_noidung = List.from(json['ch_noidung']);
  }
}