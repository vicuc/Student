
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pdf_flutter/pdf_flutter.dart';


class DeThiMonScreen extends StatefulWidget {
  final String mh_id;
  static final routeName = "/dethimon";

  const DeThiMonScreen({Key key, this.mh_id}) : super(key: key);
  @override
  _DeThiMonScreenState createState() => _DeThiMonScreenState();
}

class _DeThiMonScreenState extends State<DeThiMonScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        iconTheme: IconThemeData(color: Colors.amber),
        backgroundColor: Colors.cyan[700],
        title: Row(
          children: [
            new Text(
              "Đề Thi",
              style: new TextStyle(fontSize: 19.0, color: Colors.amber),
            ),
          ],
        ),
      ),
      body: StreamBuilder<DocumentSnapshot>(
        stream: Firestore.instance.collection("dethi").document(widget.mh_id).snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData){
            return Image.asset("assets/loading.gif");
          }
          else if (snapshot.data.data == null || snapshot.data.data.length == 0) {
            return Container(
              child: Text("Chưa cập nhật!!!", 
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.blueGrey),),
            );
          } else {
            return pdf(snapshot.data.data['link']);
          }
        }
      )
    );
  }
  Widget pdf(String url){
    return Container(
      child:  PDF.network(
            '$url',
            height: double.infinity,
            width: double.infinity,
    )
    );
  }
}
