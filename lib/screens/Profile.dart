import 'package:flutter/material.dart';
import 'package:stfm_app/_core/colors_pattern.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 180.0,
            // decoration:
            //     BoxDecoration(borderRadius: BorderRadius.circular(50.0)),
            color: Colors.black,
            child: Center(
                child: Image.asset(
              "assets/logo_stfm.png",
              height: 180.0,
            )),
          ),
          Expanded(
              child: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(24.0),
            child: Form(
                child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 1.0)),
                    child: const CircleAvatar(
                      radius: 50.0,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person,
                        size: 80.0,
                        color: ColorsPattern.yellow,
                      ),
                    ),
                  ),
                  const Text(
                    "Perfil",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 48),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 24.0, left: 24.0),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      label: Text("Nome"),
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    style: const TextStyle(color: ColorsPattern.gold),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      label: Text("Usuário"),
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    style: const TextStyle(color: ColorsPattern.gold),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      label: Text("Senha"),
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    style: const TextStyle(color: ColorsPattern.gold),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      label: Text("Email"),
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    style: const TextStyle(color: ColorsPattern.gold),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        side: MaterialStateProperty.all(
                          const BorderSide(
                              color: ColorsPattern.black, width: 1.0),
                        ),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0))),
                      ),
                      child: const Text(
                        "Entrar",
                        style: TextStyle(color: Colors.black),
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
          ))
        ],
      ),
    );
  }
}
