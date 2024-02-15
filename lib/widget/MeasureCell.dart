// import 'package:flutter/material.dart';
// import 'package:stfm_app/_core/colors_pattern.dart';

// class MeasureCell extends StatelessWidget {
//   final String date;
//   final double measure;

//   const MeasureCell({super.key, required this.date, required this.measure});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Colors.amber,
//         height: 50,
//         width: 120,
//         child: Column(
//           children: [
//             Row(
//               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   children: [
//                     Text(
//                       "Tórax",
//                       style: TextStyle(
//                           color: ColorsPattern.darkgold,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 24),
//                     )
//                   ],
//                 )
//               ],
//             )
//           ],
//         ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:stfm_app/_core/colors_pattern.dart';

class MeasureCell extends StatelessWidget {
  final String? imageUrl;
  final String text1;
  final String text2;

  const MeasureCell({
    Key? key,
    this.imageUrl,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          // Coluna 1: Imagem
          Expanded(
            flex: 1,
            child: Image.asset(
              imageUrl!,
              width: 50.0,
              height: 50.0,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 32.0), // Espaçamento entre as colunas

          // Coluna 2: Texto 1
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: ColorsPattern.yellow),
                ),
                const SizedBox(height: 8.0),
                // Coloque outros widgets ou estilos conforme necessário
              ],
            ),
          ),
          const SizedBox(width: 10.0), // Espaçamento entre as colunas

          // Coluna 3: Texto 2
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end ,
              children: [
                Text(
                  text2,
                  style: TextStyle(
                      fontSize: 18.0,
                      color: ColorsPattern.yellow,
                      fontWeight: FontWeight.bold),
                ),
                // Coloque outros widgets ou estilos conforme necessário
              ],
            ),
          ),
        ],
      ),
      
    );
  }
}
