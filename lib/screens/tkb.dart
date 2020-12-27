
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TkbScreen extends StatefulWidget {
  final String l_id;
  static final routeName = "/tkb";

  const TkbScreen({Key key, this.l_id}) : super(key: key);
  @override
  _TkbScreenState createState() => _TkbScreenState();
}

class _TkbScreenState extends State<TkbScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: new AppBar(
        iconTheme: IconThemeData(color: Colors.amber),
        backgroundColor: Colors.cyan[700],
        title: new Text(
          "Thời Khóa Biểu",
          style: TextStyle(fontSize: 19.0, color: Colors.amber),
        ),
      ),
      body: StreamBuilder<DocumentSnapshot>(
        stream: Firestore.instance.collection("tkb").document(widget.l_id).snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData){
            return Image.asset("assets/loading.gif");
          }
          else if (snapshot.data.data == null || snapshot.data.data.length == 0) {
            return Container(
              child: Text("Chưa cập nhật!!!", 
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.blueGrey),),
            );
          }
          return Image.network(
            snapshot.data.data['img'],
            width: double.infinity,
            height: double.infinity,
          );
        }
      )
    );
  }
}