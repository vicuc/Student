
import 'package:cloud_firestore/cloud_firestore.dart';

class Money{
  
  String k_ten;
  String k_id;

  Money({
    this.k_id,
    this.k_ten,
  });

  @override
  Money.fromJson(Map<String, dynamic> json, String id) {
    this.k_id=id;
    this.k_ten = json['k_ten'];
  }
}