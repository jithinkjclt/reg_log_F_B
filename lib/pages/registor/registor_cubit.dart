import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

import '../homePage/homePage.dart';

part 'registor_state.dart';

class RegistorCubit extends Cubit<RegistorState> {
  RegistorCubit(this.context) : super(RegistorInitial());
  BuildContext context;
  TextEditingController usectr = TextEditingController();
  TextEditingController passrctr = TextEditingController();

  registor() async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: usectr.text.trim(), password: passrctr.text.trim())
          .then((value) => Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return home();
          },)));
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger(
          child: AlertDialog(
            backgroundColor: Colors.red,
        title: Text(e.code),
      ));
    }
  }
}
