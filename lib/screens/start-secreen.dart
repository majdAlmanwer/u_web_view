// ignore_for_file: file_names

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:utajeer_web_view/screens/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }
}

class SplashState extends State<SplashScreen> {
  // WebController webController = Get.put(WebController());
  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  startTime() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00689D),
      body: Stack(
        children: [
          Positioned(
              right: 0,
              top: 0,
              child: Image.asset('asset/images/Group 11@2x.png',
                  height: Get.width * .5)),
          Center(
              child: Image.asset('asset/images/logo (2).png',
                  height: Get.width * .1550)),
        ],
      ),
    );
  }
}
