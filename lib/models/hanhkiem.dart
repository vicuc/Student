
import 'package:cloud_firestore/cloud_firestore.dart';

class HanhKiem{
  
  String hk_xeploai;
  String hk_ghichu;
  String l_id;
  String hk_id;
  String hs_id;

  HanhKiem({
    this.l_id,
    this.hk_ghichu,
    this.hk_id,
    this.hk_xeploai,
    this.hs_id
  });

  @override
  HanhKiem.fromJson(Map<String, dynamic> json, String id) {
    this.l_id=json['l_id'];
    this.hs_id=json['hs_id'];
    this.hk_xeploai=json['hk_xeploai'];
    this.hk_id=json['hk_id'];
    this.hk_ghichu=json['hk_ghichu'];
  }
}