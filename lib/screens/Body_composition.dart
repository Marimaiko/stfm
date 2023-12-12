import 'package:flutter/material.dart';
import 'package:stfm_app/widget/ProfileHeader.dart';

class BodyComposition extends StatefulWidget {
  const BodyComposition({super.key});

  @override
  State<BodyComposition> createState() => _BodyCompositionState();
}

class _BodyCompositionState extends State<BodyComposition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ListView(
          children: [
            const ProfileHeader(title: "Olá usuário"),
            
          ],
        ),
      ),
    );
  }
}
