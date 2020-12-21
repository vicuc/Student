import 'package:Student/models/thongtin.dart';
import 'package:Student/screens/home.dart';
import 'package:Student/screens/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  Thongtin loggedUser;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: FirebaseAuth.instance.currentUser(),
      builder: (context, AsyncSnapshot<FirebaseUser> snapshot) {
        if (snapshot.hasData) {
          return StreamBuilder<DocumentSnapshot>(
              stream: Firestore.instance
                  .collection("Users")
                  .document(snapshot.data.uid)
                  .snapshots(),
              builder: (context, snap) {
                if (snap.hasData) {
                loggedUser = Thongtin.fromJson(snap.data.data, snap.data.documentID);
                Thongtin.logUser(loggedUser);
                return HomeScreen(user: loggedUser,);
                } else {
                  return Image.asset("assets/loading.gif");
                }
              });
        } else {
          return LoginScreen();
        }
      },
    );
  }
}
