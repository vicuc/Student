
import 'package:cloud_firestore/cloud_firestore.dart';

class NienKhoa{
  
  String nk_nam;
  Timestamp nk_tgbd;
  Timestamp nk_tgkt;

  NienKhoa({
    this.nk_nam,
    this.nk_tgbd,
    this.nk_tgkt,
  });

  @override
  NienKhoa.fromJson(Map<String, dynamic> json, String id) {
    this.nk_nam = id;
    this.nk_tgbd=json['nk_tgbd'];
    this.nk_tgkt=json['tgkt'];
  }
}