import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:leran_f_b_1/pages/homePage/reciver.dart';
import 'package:leran_f_b_1/pages/homePage/senter.dart';

import 'Sizedbox.dart';

class home extends StatelessWidget {
  home({
    super.key,
  });

  late int a;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
        IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            icon: const Icon(Icons.exit_to_app)),
        const SizedBox(
          width: 50,
        )
      ]),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        height: 60,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 320,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  borderRadius: BorderRadius.circular(40),
                  color: const Color(0xFFF1F1F1),
                ),
                height: 50,
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintStyle:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                      hintText: "Type here",
                      border: InputBorder.none),
                ),
              ),
            ),
            const Icon(
              Icons.send,
              color: Colors.blue,
              size: 45,
            )
          ],
        ),
      ),
      backgroundColor: const Color(0xFFF1F1F1),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            B(x: 50),

            Senter(text: '',),
            Reciver(text: '',),
            Senter(text: '',),
            Reciver(text: '',),
            Senter(text: '',),
            Reciver(text: '',),
            Senter(text: '',),
            Reciver(text: '',),
          ],
        ),
      ),
    );
  }
}
