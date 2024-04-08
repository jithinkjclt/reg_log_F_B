import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leran_f_b_1/pages/SplashScreen/splash_cubit.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocProvider(
          create: (context) => SplashCubit(context),
          child: BlocBuilder<SplashCubit, SplashState>(
            builder: (context, state) {
              return const Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Image(
                      image: NetworkImage(
                          "https://media3.giphy.com/media/QBd2kLB5qDmysEXre9/giphy.gif?cid=6c09b9522jc17mi4snpg2ikk2qci2hec92ap9aqo34kz8rvu&ep=v1_internal_gif_by_id&rid=giphy.gif&ct=g")),
                  CupertinoActivityIndicator(
                    radius: 20,
                    animating: true,
                    // animatingColor: CupertinoColors.activeBlue,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
