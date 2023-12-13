import 'package:flutter/material.dart';
import 'package:stfm_app/screens/AccessKey.dart';
import 'package:stfm_app/screens/BodyComposition.dart';
import 'package:stfm_app/screens/Login.dart';
import 'package:stfm_app/screens/Profile.dart';
import 'package:stfm_app/widget/ProfileHeader.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ProfileHeader(title: "Olá, usuário")
        // home: BodyComposition(),
        // home: AccessKey(),
        );
  }
}
