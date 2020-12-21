
import 'package:cloud_firestore/cloud_firestore.dart';

class Money{
  
  String nk_nam;
  Timestamp nk_tgbd;
  Timestamp nk_tgkt;

  Money({
    this.nk_nam,
    this.nk_tgbd,
    this.nk_tgkt,
  });

  @override
  Money.fromJson(Map<String, dynamic> json, String id) {
    this.nk_nam = id;
    this.nk_tgbd=json['nk_tgbd'];
    this.nk_tgkt=json['tgkt'];
  }
}