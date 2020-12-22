
import 'package:cloud_firestore/cloud_firestore.dart';

class Khoi{
  
  String k_ten;
  String k_id;

  Khoi({
    this.k_id,
    this.k_ten,
  });

  @override
  Khoi.fromJson(Map<String, dynamic> json, String id) {
    this.k_id=id;
    this.k_ten = json['k_ten'];
  }
}