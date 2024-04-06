import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  TextEditingController chat = TextEditingController();

  dataStore() async {
    FirebaseFirestore.instance
        .collection("messege")
        .add({"messege": chat.text, "time": DateTime.now()});
  }
}
