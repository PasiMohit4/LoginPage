import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speakup/anmition/fadeanimation.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF1F1A30),
      appBar:  AppBar(
        title: Text ('Home'),
      ));
  }
}
