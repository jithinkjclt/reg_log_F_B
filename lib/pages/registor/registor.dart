import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leran_f_b_1/pages/registor/registor_cubit.dart';
import '../login/login.dart';

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
                  cubit.divaice == true
                      ? Container(
                          height: 350,
                          width: 384,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      "https://media.tenor.com/kKyF41hEeDUAAAAM/lions.gif")),
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(150),
                                  topLeft: Radius.circular(150))),
                        )
                      : Container(
                          height: 350,
                          width: 384,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      "https://media1.tenor.com/m/8ukkFrwvta0AAAAC/mr-bean-bean.gif")),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(150),
                                  bottomLeft: Radius.circular(150))),
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
                        "please enter yoyur credentials to login",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    child: Column(
                      children: [
                        cubit.divaice == true
                            ? Padding(
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
                                          hintText: "Email id",
                                          hintStyle: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black45),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                ),
                              )
                            : Padding(
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
                                      keyboardType: TextInputType.number,
                                      controller: cubit.mobil,
                                      decoration: const InputDecoration(
                                          hintText: "Mobile",
                                          hintStyle: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black45),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                ),
                              ),
                        cubit.divaice == true
                            ? Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, right: 15, top: 10),
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
                              )
                            : const SizedBox(),
                      ],
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
                  cubit.divaice == true
                      ? Padding(
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
                                child: const Text(
                                  "Registor",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ))
                      : InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  content: Container(
                                    height: 150,
                                    child: Column(
                                      children: [
                                        const Text("type the O.T.P"),
                                        TextFormField(
                                          keyboardType: TextInputType.number,
                                          decoration: const InputDecoration(
                                              enabledBorder:
                                                  OutlineInputBorder()),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 80,
                                          decoration: const BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15))),
                                          child: const Center(child: Text("Submit")),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
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
                                child: const Center(
                                  child: Text(
                                    "Submit",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )),
                        ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      const Text("registor with "),
                      cubit.divaice == true
                          ? InkWell(
                              onTap: () {
                                cubit.mobile();
                              },
                              child: const Text(
                                "Mobile ",
                                style: TextStyle(color: Colors.blueAccent),
                              ),
                            )
                          : InkWell(
                              onTap: () {
                                cubit.mail();
                              },
                              child: const Text(
                                "Email ",
                                style: TextStyle(color: Colors.blueAccent),
                              ),
                            ),
                      cubit.divaice == true
                          ? const Icon(
                              Icons.phone_android_rounded,
                              color: Colors.blueAccent,
                            )
                          : const Icon(
                              Icons.email,
                              color: Colors.blueAccent,
                            )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        "Already have an account ",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w300),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) {
                              return const login();
                            },
                          ));
                        },
                        child: const Text(
                          "Login ",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
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
