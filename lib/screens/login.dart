import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[300],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildAvatar(),
            buildTextField(
              label: "Tên đăng nhập",
              icon: Icons.person,
            ),
            buildTextField(
              label: "Mật khẩu",
              icon: Icons.lock,
            ),
            buildButton(context),
          ],
        ),
      ),
    );
  }

  Widget buildAvatar() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 48.0),
      child: SizedBox(
        height: 120,
        width: 120,
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/icon.png'),
        ),
      ),
    );
  }

  Widget buildTextField({String label, IconData icon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 18),
      child: TextField(
        decoration: InputDecoration(
          // labelText: label,
          prefixIcon: Icon(icon),
          border: OutlineInputBorder(),
          hintText: label,
        ),
      ),
    );
  }

  Widget buildButton(context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: RaisedButton(
        child: Text("Đăng Nhập"),
        color: Colors.cyan[100],
        padding: EdgeInsets.zero,
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
