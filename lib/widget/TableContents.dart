import 'package:flutter/material.dart';
import 'package:stfm_app/_core/colors_pattern.dart';

class TableContents extends StatelessWidget {
  final String description;
  final String? reference;
  final double result;
  final String? avaliation;

  const TableContents(
      {Key? key,
      required this.description,
      this.reference,
      required this.result,
      this.avaliation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          // Coluna 1: Descrição
          Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    description,
                    style: TextStyle(
                        color: ColorsPattern.darkgold,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Ref.: $reference",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )),
          const SizedBox(width: 32.0), // Espaçamento entre as colunas

          // Coluna 2: Resultado
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  result.toString(),
                  style:
                      TextStyle(fontSize: 24.0, color: ColorsPattern.darkgold),
                ),
                const SizedBox(height: 8.0),
              ],
            ),
          ),
          const SizedBox(width: 10.0), // Espaçamento entre as colunas

          // Coluna 3: Avaliação
          Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(12.0),
                color: ColorsPattern.darkRed,
                child: Text(
                  avaliation.toString(),
                  style: TextStyle(color: ColorsPattern.darkgold, fontSize: 24),
                ),
              )),
        ],
      ),
    );
  }
}
