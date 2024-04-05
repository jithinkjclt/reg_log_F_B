import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

import '../homePage/homePage.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.context) : super(LoginInitial());
  BuildContext context;

  TextEditingController userctr = TextEditingController();
  TextEditingController passctr = TextEditingController();

  login() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: userctr.text.trim(), password: passctr.text.trim())
          .then((value) => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return const home();
                },
              )));
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger(child: SnackBar(content: Text(e.code)));
    }
  }
}
