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
      // backgroundColor: Colors.amber,
      body: Stack(
        children: [
          Positioned(
            bottom: 0.0,
            right: -20.0,
            child: Image.asset(
              "assets/decoration.png",
              height: 300,
              width: 180,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Form(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/logo_stfm.png",
                      // height: 128,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: ColorsPattern.gold),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: ColorsPattern.gold)),
                        label: Text("Usuário"),
                        labelStyle: TextStyle(
                            color: ColorsPattern.gold,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      style: const TextStyle(color: ColorsPattern.gold),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: ColorsPattern.gold),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: ColorsPattern.gold)),
                        label: Text("Senha"),
                        labelStyle: TextStyle(
                            color: ColorsPattern.gold,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      obscureText: true,
                      style: const TextStyle(color: ColorsPattern.gold),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                      width: 300,
                      height: 50,
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(
                            const BorderSide(
                                color: ColorsPattern.gold, width: 1.0),
                          ),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
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
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 180,
                      height: 50,
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(
                            const BorderSide(
                                color: ColorsPattern.gold, width: 1.0),
                          ),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24.0))),
                        ),
                        child: const Text(
                          "Primeiro Acesso",
                          style: TextStyle(color: ColorsPattern.gold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
