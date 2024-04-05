import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:leran_f_b_1/pages/login/login.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) {
                    return const login();
                  },
                ));
              },
              child: const Row(
                children: [
                  SizedBox(
                    width: 60,
                  ),
                  Text("Logout"),
                  Icon(Icons.logout)
                ],
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              height: 800,
              width: 390,
              child: const Image(
                  image: NetworkImage(
                      "https://media3.giphy.com/media/RLcQGYmQU36d3FceiP/giphy.gif?cid=6c09b952731pchtqia8pwe8v98uk0l90j0uhmqkwbzarwmni&ep=v1_gifs_search&rid=giphy.gif&ct=g")),
            )
          ],
        ),
      ),
    );
  }
}
