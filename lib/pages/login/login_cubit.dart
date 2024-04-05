import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../homePage/homePage.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.context) : super(LoginInitial());
  BuildContext context;

  TextEditingController userctr = TextEditingController();
  TextEditingController passctr = TextEditingController();
  bool flag = true;


  login() async {
    if (userctr.text.isNotEmpty && passctr.text.length>8) {
      flag = false;
      emit(LoginInitial());

      try {
        await FirebaseAuth.instance
            .signInWithEmailAndPassword(
            email: userctr.text.trim(), password: passctr.text.trim())
            .then((value) =>
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return const home();
              },
            )));
      } on FirebaseException catch (e) {
        flag = true;

        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(e.message.toString())));
        print(e.code);
      } }else{
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("This fields is required"),backgroundColor: Colors.red, ));
    }

      emit(LoginInitial());
    }


  }



