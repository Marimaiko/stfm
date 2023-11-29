import 'package:flutter/material.dart';
import 'package:stfm_app/_core/colors_pattern.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsPattern.black,
      appBar: AppBar(title: Text("ncksdnfkj")),
    );
  }
}
