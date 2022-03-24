import "package:flutter/material.dart";

import '../homePage/homePage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 8), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomePage()));
    });
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height / 2.0,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
              image: DecorationImage(image: AssetImage("images/people1.png"))),
        ),
      ]),
      Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Container(
              height: 130,
              width: MediaQuery.of(context).size.width / 1.20,
              // color: Colors.pink,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                        height: 45,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                          child: Text("PoRtFoLiO",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        )),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const CircularProgressIndicator(
                    color: Colors.purple,
                  )
                ],
              )),
        ),
      )
    ])));
  }
}
