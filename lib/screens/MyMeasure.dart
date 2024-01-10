import 'package:flutter/material.dart';
import 'package:stfm_app/_core/colors_pattern.dart';
import 'package:stfm_app/widget/InformationCollumnsTitle.dart';
import 'package:stfm_app/widget/ProfileHeader.dart';
import 'package:stfm_app/widget/TableContents.dart';

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
            const SizedBox(
              height: 12,
            ),
            const Text(
              "Composição Corporal",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: ColorsPattern.darkgold),
            ),
            const SizedBox(
              height: 12,
            ),
            const InformationCollumnsTitle(),
            const SizedBox(
              height: 12,
            ),
            const TableContents(
              description: "Peso",
              reference: "47,4 ~ 64,0 Kg",
              result: 81,
              avaliation: "Muito alto",
            ),
            const TableContents(
                description: "Músculo \nEsquelético",
                reference: "33,3 ~ 39,3 %",
                result: 48,
                avaliation: "Excelente"),
            const TableContents(
                description: "Massa \nMuscular",
                reference: "34,2~50,5Kg",
                result: 72,
                avaliation: "Ótimo"),
            const TableContents(
                description: "Idade \nCorporal",
                result: 81,
                avaliation: "+23 anos"),
            const Divider(color: ColorsPattern.darkgold),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Diagnóstico da Obesidade",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: ColorsPattern.darkgold),
            ),
            const SizedBox(
              height: 16,
            ),
            // const InformationCollumnsTitle(),
            TableContents(
              description: "IMC",
              result: 32,
              reference: "18,5~25 Kg/m2",
              avaliation: "Muito alto",
            ),
            TableContents(
              description: "Gordura Corporal",
              result: 23,
              reference: "16.0 ~ 21.0 %",
              avaliation: "Acima",
            ),
            TableContents(
              description: "Gordura visceral",
              result: 17,
              reference: "1~9",
              avaliation: "Muito alto",
            ),
            TableContents(
              description: "Idade corporal",
              result: 50,
              avaliation: "Acima",
            ),
            TableContents(
              description: "Relação \ncintura \nquadril",
              result: 0.95,
              avaliation: "Risco alto",
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Outros indicadores",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: ColorsPattern.darkgold),
            ),
        TableContents(description: "Pressão \nArterial", result: 130, reference: "120/80 mmHg", avaliation: "Pré-alta",),
        TableContents(description: "Gordura \ncorporal", result: 50, reference: "16 ~ 21 %", avaliation: "Abaixo",) 
          ],
        ),
      ),
    );
  }
}
