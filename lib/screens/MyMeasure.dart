import 'package:flutter/material.dart';
import 'package:stfm_app/_core/colors_pattern.dart';
import 'package:stfm_app/widget/ProfileHeader.dart';

class MyMeasure extends StatefulWidget {
  const MyMeasure({super.key});

  @override
  State<MyMeasure> createState() => _MyMeasureState();
}

class _MyMeasureState extends State<MyMeasure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ListView(
          children: [
            const ProfileHeader(title: "Olá udghhsuário"),
            const SizedBox(
              height: 24,
            ),
            Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: 242,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Minhas medidas",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Última Avaliação: 01/01/01",
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                      const SizedBox(height: 12),
                      Image.asset("assets/myBody.jpg"),
                      const SizedBox(height: 12),
                      OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              padding:
                                  const EdgeInsets.only(left: 48, right: 48),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              side: const BorderSide(
                                width: 1,
                              )),
                          onPressed: () {},
                          child: const Text(
                            "Ver fotos",
                            style: TextStyle(color: Colors.black),
                          ))
                    ],
                  ),
                )),
            const Text(
              "Composição Corporal",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: ColorsPattern.darkgold),
            )
          ],
        ),
      ),
    );
  }
}
