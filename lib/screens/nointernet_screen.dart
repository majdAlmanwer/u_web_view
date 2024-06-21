import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:utajeer_web_view/screens/homepage.dart';

class NoInternet extends StatefulWidget {
  const NoInternet({Key? key}) : super(key: key);

  @override
  State<NoInternet> createState() => _NoInternetState();
}

class _NoInternetState extends State<NoInternet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00689D),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
            child: Image.asset(
          'asset/images/No-Internet.png',
          height: Get.width * .5,
        )),
        Center(
          child: Container(
            child: const Text(
              'Please Check Your Connection Internet',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
          child: const Text(
            '  Retry  ',
            style: TextStyle(color: Color(0xff00689D)),
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
          ),
        )
      ]),
    );
  }
}
