import 'package:flutter/material.dart';

class ProfileButton extends StatefulWidget {
  final List<String> segments;
  final Function(int) onValueChanged;

  ProfileButton({required this.segments, required this.onValueChanged});

  @override
  _ProfileButtonState createState() => _ProfileButtonState();
}

class _ProfileButtonState extends State<ProfileButton> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(widget.segments.length, (index) {
        return ElevatedButton(
          onPressed: () {
            setState(() {
              selectedIndex = index;
            });
            widget.onValueChanged(index);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              index == selectedIndex ? Colors.blue : Colors.grey,
            ),
          ),
          child: Text(widget.segments[index]),
        );
      }),
    );
  }
}
