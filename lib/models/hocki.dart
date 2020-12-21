
import 'package:cloud_firestore/cloud_firestore.dart';

class Money{
  
  String hk_ten;
  String hk_id;

  Money({
    this.hk_id,
    this.hk_ten,
  });

  @override
  Money.fromJson(Map<String, dynamic> json, String id) {
    this.hk_id=id;
    this.hk_ten = json['hk_ten'];
  }
}