import 'package:flutter/material.dart';
import 'navigationMain.dart';

void main() {
  runApp(const MyHomePage());
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
      home:MainPage(),
    );
  }
}


