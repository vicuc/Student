
import 'package:cloud_firestore/cloud_firestore.dart';

class Lop{
  
  String l_id;
  String l_ten;
  String nk_nam;

  Lop({
    this.l_ten,
    this.nk_nam,
    this.l_id,
  });

  @override
  Lop.fromJson(Map<String, dynamic> json, String id) {
    this.l_id=id;
    this.l_ten = json['l_ten'];
    this.nk_nam=json['nk_nam'];
  }
}