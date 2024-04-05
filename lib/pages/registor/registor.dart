import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leran_f_b_1/pages/login/login_cubit.dart';
import 'package:leran_f_b_1/pages/registor/registor_cubit.dart';

import '../homePage/homePage.dart';

class registor extends StatelessWidget {
  const registor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => RegistorCubit(context),
        child: BlocBuilder<RegistorCubit, RegistorState>(
          builder: (context, state) {
            final cubit = context.read<RegistorCubit>();
            return SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 350,
                    width: 384,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://media.tenor.com/kKyF41hEeDUAAAAM/lions.gif")),
                        // color: Colors.green,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(150),
                            topLeft: Radius.circular(150))),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Registor',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "welcome back ! please enter yoyur credentials to login",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15, bottom: 10, top: 15),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5,
                                blurStyle: BlurStyle.outer)
                          ]),
                      width: 390,
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: TextFormField(
                          controller: cubit.usectr,
                          decoration: const InputDecoration(
                              hintText: "user name",
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black45),
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15, top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5,
                                blurStyle: BlurStyle.outer)
                          ]),
                      width: 390,
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: TextFormField(
                          controller: cubit.passrctr,
                          decoration: const InputDecoration(
                              hintText: "Password",
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black45),
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Forget your ",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w300),
                      ),
                      Text(
                        "Password?",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15, top: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 5,
                                    blurStyle: BlurStyle.outer)
                              ]),
                          width: 390,
                          height: 60,
                          child: Center(
                            child: InkWell(
                              onTap: () {
                                cubit.registor();
                              },
                              child: Text(
                                "Registor",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Don't have any account? ",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w300),
                      ),
                      Text(
                        "Sign up?",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
