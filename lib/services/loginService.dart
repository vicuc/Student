import 'package:firebase_auth/firebase_auth.dart';

class LoginService {
  final FirebaseAuth _fireBaseAuth = FirebaseAuth.instance;

  void logIn(String email, String pass, Function(String) onSuccess,
      Function(String) onSignInError) {
    _fireBaseAuth
        .signInWithEmailAndPassword(email: email, password: pass)
        .then((user) {
      onSuccess(user.user.uid);
    }).catchError((err) {
      print("err: " + err.toString());
      onSignInError(err.toString());
    });
  }

  void _onSignUpErr(String code, Function(String) onRegisterError) {
    print(code);
    switch (code) {
      case "ERROR_INVALID_EMAIL":
      case "ERROR_INVALID_CREDENTIAL":
        onRegisterError("Invalid email");
        break;
      case "ERROR_EMAIL_ALREADY_IN_USE":
        onRegisterError("Email has existed");
        break;
      case "ERROR_WEAK_PASSWORD":
        onRegisterError("The password is not strong enough");
        break;
      default:
        onRegisterError("SignUp fail, please try again");
        break;
    }
  }

  Future<void> signOut() async {
    print("signOut");
    return _fireBaseAuth.signOut();
  }
}
