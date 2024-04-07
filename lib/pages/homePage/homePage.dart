import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leran_f_b_1/pages/homePage/reciver.dart';
import 'package:leran_f_b_1/pages/homePage/senter.dart';
import 'home_cubit.dart';

class home extends StatelessWidget {
  home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false, actions: [
        IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            icon: const Icon(Icons.exit_to_app)),
        const SizedBox(
          width: 50,
        )
      ]),
      backgroundColor: const Color(0xFFF1F1F1),
      body: BlocProvider(
        create: (context) => HomeCubit(),
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            final cubit = context.read<HomeCubit>();
            return StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection("messege")
                    .orderBy("time")
                    .snapshots(),
                builder: (context, snapshot) {
                  return Column(
                    children: [
                      Expanded(
                        flex: 8,
                        child: ListView.builder(
                            itemBuilder: (context, index) {
                              return InkWell(
                                  onTap: () {
                                    cubit.deleteData(
                                        snapshot.data!.docs[index].id);
                                  },
                                  child: snapshot.data!.docs[index]["user"] ==
                                          values
                                      ? Senter(
                                          text: snapshot.data!.docs[index]
                                              ["messege"],
                                          time: "12.45",
                                        )
                                      : Reciver(
                                          text: snapshot.data!.docs[index]
                                              ["messege"]));
                            },
                            itemCount: snapshot.data!.docs.length),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 290,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black26),
                                  borderRadius: BorderRadius.circular(40),
                                  color: const Color(0xFFF1F1F1),
                                ),
                                height: 50,
                                child: TextFormField(
                                  controller: cubit.chat,
                                  decoration: const InputDecoration(
                                      hintStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300),
                                      hintText: "Type here",
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  cubit.dataStore();
                                },
                                icon: const Icon(
                                  Icons.send,
                                  size: 40,
                                  color: Colors.blue,
                                ))
                          ],
                        ),
                      ),
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}
