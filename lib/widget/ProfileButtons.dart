import 'package:flutter/material.dart';
import 'package:stfm_app/screens/Login.dart';
import 'package:stfm_app/screens/MyMeasure.dart';
import 'package:stfm_app/screens/Profile.dart';

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
        segments: const <ButtonSegment<Sections>>[
          ButtonSegment<Sections>(
              value: Sections.Measure, label: Text("Minhas medidas")),
          ButtonSegment(
              value: Sections.Evolution, label: Text("Minha evolução")),
          ButtonSegment(value: Sections.Menu, label: Text("Meu cardápio"))
        ],
        selected: <Sections>{
          _selectedSection
        },
        onSelectionChanged: (Set<Sections> newSelection) {
          setState(() {
            _selectedSection = newSelection.first;
            _navigateToScreen(context);
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

  void _navigateToScreen(BuildContext context) {
    switch (_selectedSection) {
      case Sections.Measure:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyMeasure()),
        );
        break;
      case Sections.Evolution:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Login()),
        );
        break;
      case Sections.Menu:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Profile()),
        );
        break;
    }
  }
}
