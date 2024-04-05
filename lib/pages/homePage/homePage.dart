import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.red,
            height: 800,
            width: 390,
            child: Image(
                image: NetworkImage(
                    "https://media3.giphy.com/media/RLcQGYmQU36d3FceiP/giphy.gif?cid=6c09b952731pchtqia8pwe8v98uk0l90j0uhmqkwbzarwmni&ep=v1_gifs_search&rid=giphy.gif&ct=g")),
          )
        ],
      ),
    );
  }
}
