import 'dart:convert';

class BangDiem {
  String bd_id;
  String mh_id;
  String lkt_id;
  String bd_diem;
  String hs_id;
  String nk_id;
  String hk_id;
  String bd_hs;

  BangDiem({
    this.bd_id,
    this.bd_diem,
    this.hk_id,
    this.hs_id,
    this.lkt_id,
    this.mh_id,
    this.nk_id,
    this.bd_hs
  });

  @override
  BangDiem.fromJson(Map<String, dynamic> json, String id) {
    this.bd_id = id;
    this.hk_id = json ['hk_ten'];//hk_id
    this.hs_id = json ['hs_id'];
    this.lkt_id = json ['lkt_ten'];//hk_id
    this.mh_id = json ['mh_id'];
    this.nk_id = json ['nk_ten'];//bd_id
    this.bd_diem = json ['bd_diem'];
    this.bd_hs = json['bd_hs'];
  }
}