import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

import '../LocalStorage/LocalStorage.dart';
import '../homePage/homePage.dart';

part 'registor_state.dart';

class RegistorCubit extends Cubit<RegistorState> {
  RegistorCubit(this.context) : super(RegistorInitial());
  BuildContext context;
  TextEditingController usectr = TextEditingController();
  TextEditingController passrctr = TextEditingController();
  TextEditingController mobil = TextEditingController();
  bool divaice = true;

  registor() async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: usectr.text.trim(), password: passrctr.text.trim())
          .then((value) => Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (context) {
                final data1 = LocalStorage();
                data1.getUser(FirebaseAuth.instance.currentUser!.uid);
                print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<<<<<<<<$data1");
                return Home();
              })));
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger(
          child: AlertDialog(
        backgroundColor: Colors.red,
        title: Text(e.code),
      ));
    }
  }

  mobile() {
    divaice = false;
    emit(RegistorInitial());
  }

  mail() {
    divaice = true;
    emit(RegistorInitial());
  }
}

// core auth
