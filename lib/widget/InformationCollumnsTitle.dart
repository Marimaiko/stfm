import 'package:flutter/material.dart';
import 'package:stfm_app/_core/colors_pattern.dart';

class InformationCollumnsTitle extends StatelessWidget {
  const InformationCollumnsTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            decoration: BoxDecoration(
                border: Border.all(color: ColorsPattern.darkgold, width: 1.0)),
            child: const Text(
              "Descrição",
              style: TextStyle(color: ColorsPattern.darkgold, fontSize: 18),
            ),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            decoration: BoxDecoration(
                border: Border.all(color: ColorsPattern.darkgold, width: 1.0)),
            child: const Text(
              "Resultado",
              style: TextStyle(color: ColorsPattern.darkgold, fontSize: 18),
            ),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            decoration: BoxDecoration(
                border: Border.all(color: ColorsPattern.darkgold, width: 1.0)),
            child: const Text(
              "Avaliação",
              style: TextStyle(color: ColorsPattern.darkgold, fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
