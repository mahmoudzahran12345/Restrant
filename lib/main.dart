import 'package:flutter/material.dart';
import 'package:resturant/screen/getstart.dart';
import 'package:resturant/screen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor:Theme.of(context).scaffoldBackgroundColor
        ),
        primarySwatch: Colors.blue,
      ),
      home:  const GetStart(),
    );
  }
}

