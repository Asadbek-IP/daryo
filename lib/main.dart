import 'package:daryo/pages/homePage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.blue,
  ));
  runApp(const DaryoApp());
}

class DaryoApp extends StatefulWidget {
  const DaryoApp({Key? key}) : super(key: key);

  @override
  _DaryoAppState createState() => _DaryoAppState();
}

class _DaryoAppState extends State<DaryoApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
