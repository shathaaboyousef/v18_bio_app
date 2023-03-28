import 'package:flutter/material.dart';
import 'package:v18_bio_app/screens/bio_screen.dart';

import 'dart:html';
void main (){runApp(MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home :BioScreen(),
    );
  }
}
