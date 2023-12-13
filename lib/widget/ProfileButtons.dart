import 'package:flutter/material.dart';

enum Sections { Measure, Evolution, Menu }

class ProfileButtons extends StatefulWidget {
  const ProfileButtons({Key? key}) : super(key: key);

  @override
  State<ProfileButtons> createState() => _ProfileButtonsState();
}

class _ProfileButtonsState extends State<ProfileButtons> {
  Sections _selectedSection = Sections.Measure;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Sections>(
        segments: <ButtonSegment<Sections>>[
          const ButtonSegment<Sections>(
              value: Sections.Measure, label: Text("Minhas medidas")),
          const ButtonSegment(
              value: Sections.Evolution, label: Text("Minha evolução")),
          const ButtonSegment(value: Sections.Menu, label: Text("Meu cardápio"))
        ],
        selected: <Sections>{
          _selectedSection
        },
        onSelectionChanged: (Set<Sections> newSelection) {
          setState(() {
            _selectedSection = newSelection.first;
          });
        },
        style: ButtonStyle(
          foregroundColor:
              MaterialStateColor.resolveWith((Set<MaterialState> states) {
            return states.contains(MaterialState.selected)
                ? Colors.black
                : Colors.yellow;
          }),
          backgroundColor:
              MaterialStateColor.resolveWith((Set<MaterialState> states) {
            return states.contains(MaterialState.selected)
                ? Colors.yellow
                : Colors.black;
          }),
        ));
  }
}
