import 'package:flutter/material.dart';
import 'package:stfm_app/screens/AccessKey.dart';
import 'package:stfm_app/screens/Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AccessKey(),
    );
  }
}
