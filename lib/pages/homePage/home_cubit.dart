import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

import '../LocalStorage/LocalStorage.dart';

part 'home_state.dart';

String? values;

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  TextEditingController chat = TextEditingController();

  dataStore() async {
    String value = await LocalStorage().setUser();
    print("<<<<<<<<<<<<<<<<<<<<<<<<<<<$value");
    values = value;
    FirebaseFirestore.instance
        .collection("messege")
        .add({"messege": chat.text, "time": DateTime.now(), "user": value});
    chat.clear();
  }

  deleteData(id) async {
    await FirebaseFirestore.instance.collection("messege").doc(id).delete();
  }
}
