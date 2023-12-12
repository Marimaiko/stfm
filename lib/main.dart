import 'package:flutter/material.dart';
import 'package:stfm_app/screens/AccessKey.dart';
import 'package:stfm_app/screens/Body_composition.dart';
import 'package:stfm_app/screens/Login.dart';
import 'package:stfm_app/screens/Profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BodyComposition(),
    );
  }
}
