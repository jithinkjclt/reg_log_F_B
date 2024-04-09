import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../LocalStorage/LocalStorage.dart';
import '../homePage/homePage.dart';

import '../login/login.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit(this.context) : super(SplashInitial()) {
    delay();
  }

  BuildContext context;

  delay() async {
    await Future.delayed(const Duration(seconds: 5));
    flash();
  }

  flash() async {

    String? value = await LocalStorage().setUser();
    print(">>>>>>>>>>>>>>>>$value");

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
          builder: (context) => value == null ? const login() : Home()),
    );
  }
}
