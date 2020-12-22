
import 'package:cloud_firestore/cloud_firestore.dart';

class Hocki{
  
  String hk_ten;
  String hk_id;

  Hocki({
    this.hk_id,
    this.hk_ten,
  });

  @override
  Hocki.fromJson(Map<String, dynamic> json, String id) {
    this.hk_id=id;
    this.hk_ten = json['hk_ten'];
  }
}