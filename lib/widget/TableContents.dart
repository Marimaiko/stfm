import 'package:flutter/material.dart';
import 'package:stfm_app/_core/colors_pattern.dart';

class TableContents extends StatelessWidget {
  Widget avaliationBackground(int value, String text) {
    Color backgroundColor = value < 10 ? Colors.green : Colors.red;

    return Container(
      color: backgroundColor,
    );
  }

  final String description;
  final String? reference;
  final String result;
  final String avaliation;

  const TableContents(
      {super.key,
      required this.description,
      this.reference,
      required this.result,
      required this.avaliation});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Divider(color: ColorsPattern.darkgold),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    description,
                    overflow: TextOverflow.clip,
                    maxLines: 2,
                    style: const TextStyle(
                      color: ColorsPattern.darkgold,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
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
              ),
              Text(
                result,
                style: const TextStyle(
                    color: ColorsPattern.darkgold, fontSize: 24),
              ),
              Container(
                padding: EdgeInsets.all(16),
                color: ColorsPattern.darkRed,
                child: Text(
                  avaliation,
                  style: const TextStyle(
                    color: ColorsPattern.darkgold,
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          )
        ],
      ),
    );
  }
}
