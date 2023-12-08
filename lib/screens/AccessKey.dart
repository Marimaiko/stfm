import 'package:flutter/material.dart';
import 'package:stfm_app/_core/colors_pattern.dart';

class AccessKey extends StatefulWidget {
  const AccessKey({super.key});

  @override
  State<AccessKey> createState() => _AccessKeyState();
}

class _AccessKeyState extends State<AccessKey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsPattern.black,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 24.0, left: 24.0),
                child: Image.asset("assets/logo_stfm.png"),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ColorsPattern.gold),
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: ColorsPattern.gold)),
                  label: Text("Chave de Acesso"),
                  labelStyle: TextStyle(
                      color: ColorsPattern.gold,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                style: const TextStyle(color: ColorsPattern.gold),
              ),
              const SizedBox(
                height: 48,
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(
                      const BorderSide(color: ColorsPattern.gold, width: 1.0),
                    ),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0))),
                  ),
                  child: const Text(
                    "Entrar",
                    style: TextStyle(color: ColorsPattern.gold),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Esqueceu a senha?",
                    style: TextStyle(color: ColorsPattern.gold)),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
