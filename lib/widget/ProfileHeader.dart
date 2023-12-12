import 'package:flutter/material.dart';
import 'package:stfm_app/_core/colors_pattern.dart';
import 'package:stfm_app/widget/ProfileButtons.dart';

enum buttonsText { Measure, Evolution, Menu }

class ProfileHeader extends StatelessWidget {
  final String title;

  // Construtor que aceita um parâmetro de texto
  const ProfileHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        // Estilize o container conforme necessário
        padding: const EdgeInsets.all(16.0),
        color: Colors.black,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border:
                          Border.all(color: ColorsPattern.gold, width: 1.0)),
                  child: const CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 50.0,
                    child: Icon(
                      Icons.person,
                      size: 60.0,
                      color: ColorsPattern.gold,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Text(
                  title,
                  style: const TextStyle(
                      color: ColorsPattern.yellow, fontSize: 24),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "Minhas medidas",
                      style: TextStyle(color: ColorsPattern.gold, fontSize: 18),
                    )),
                ProfileButton(segments: [
                  "Minhas medidas",
                  "Minha Evolução",
                  "Meu cardápio"
                ], onValueChanged: (index) {})
                // TextButton(
                //   onPressed: () {},
                //   style: ButtonStyle(
                //     side: MaterialStateProperty.all(
                //       const BorderSide(color: ColorsPattern.gold, width: 1.0),
                //     ),
                //     shape: MaterialStateProperty.all(RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(24.0))),
                //   ),
                //   child: const Text("Minhas medidas",
                //       style:
                //           TextStyle(color: ColorsPattern.gold, fontSize: 18)),
                // ),
                // TextButton(
                //   onPressed: () {},
                //   style: ButtonStyle(
                //     side: MaterialStateProperty.all(
                //       const BorderSide(color: ColorsPattern.gold, width: 1.0),
                //     ),
                //     shape: MaterialStateProperty.all(RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(24.0))),
                //   ),
                //   child: const Text("Minhas evolução",
                //       style:
                //           TextStyle(color: ColorsPattern.gold, fontSize: 18)),
                // ),
                // TextButton(
                //   onPressed: () {},
                //   style: ButtonStyle(
                //     side: MaterialStateProperty.all(
                //       const BorderSide(color: ColorsPattern.gold, width: 1.0),
                //     ),
                //     shape: MaterialStateProperty.all(RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(24.0))),
                //   ),
                //   child: const Text("Meu cardápio",
                //       style:
                //           TextStyle(color: ColorsPattern.gold, fontSize: 18)),
                // )
              ],
            )
          ],
        ));
  }
}
