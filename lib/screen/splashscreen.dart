import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturant/resources/config.dart';
import 'package:resturant/screen/getstart.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashHome extends StatefulWidget {
  const SplashHome({Key? key}) : super(key: key);

  @override
  State<SplashHome> createState() => _SplashHomeState();
}

class _SplashHomeState extends State<SplashHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreen(
          seconds: 14,
          navigateAfterSeconds:  const GetStart(),
          title: const Text('Welcome In Your Restaurant',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: white,
                fontSize: 20.0
            ),),
          backgroundColor: primaryColor,
          styleTextUnderTheLoader: const TextStyle(),
          photoSize: 100.0,
          onClick: ()=>print("Flutter Egypt"),
          loaderColor: primaryColor
      ),
    );
  }
}
