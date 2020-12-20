import 'package:Student/screens/Screen.dart';
import 'package:Student/screens/home.dart';
import 'package:Student/services/loginService.dart';
import 'package:Student/widget/MessageDialog.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  //Login Service
  var _loginService = LoginService();

  // controller
  TextEditingController _passController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();

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
              textEditingController: _emailController
            ),
            buildTextField(
              textEditingController: _passController,
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

  Widget buildTextField({String label, IconData icon,TextEditingController textEditingController }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 18),
      child: TextField(
        controller: textEditingController,
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
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed:  _onClickLogin,
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: BorderSide(color: Colors.white)
        ),
        color: Colors.transparent,
        child: Text(
          'Đăng nhập',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );;
  }
void _onClickLogin(){
  _loginService.logIn(_emailController.text, _passController.text, (id) {
    Navigator.push(
            context, MaterialPageRoute(builder: (context) => Screen()));
  }, (err){
    MsgDialognotPop.showMsgDialog(context, "Đăng Nhập",err);
  });
}
}
