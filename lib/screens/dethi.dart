import 'package:Student/screens/THPT.dart';
import 'package:flutter/material.dart';

class DeThiScreen extends StatefulWidget {
  static final routeName = "/dethi";
  @override
  _DeThiScreenState createState() => _DeThiScreenState();
}

class _DeThiScreenState extends State<DeThiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan[100],
        appBar: new AppBar(
          iconTheme: IconThemeData(color: Colors.amber),
          title: Row(
            children: [
              new Text(
                "ĐỀ THI-ĐÁP ÁN",
                style: new TextStyle(fontSize: 19.0, color: Colors.amber),
              ),
            ],
          ),
          backgroundColor: Colors.cyan[900],
        ),
        body: SafeArea(
            child: new Container(
          child: Container(
            color: Colors.cyan[700],
            margin: EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: new Text(
                    'THPT QUỐC GIA',
                    style: TextStyle(fontSize: 20.0, color: Colors.amber),
                  ),
                ),
                IconButton(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      size: 40.0,
                      color: Colors.amber,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(THPTScreen.routeName);
                    }),
              ],
            ),
          ),
        )));
  }
}
