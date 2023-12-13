import 'package:flutter/material.dart';
import 'package:stfm_app/_core/colors_pattern.dart';
import 'package:stfm_app/widget/ProfileButtons.dart';

class ProfileHeader extends StatelessWidget {
  final String title;

  const ProfileHeader({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.black,
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: ColorsPattern.gold, width: 1.0),
                  ),
                  child: const CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 50.0,
                    child: Icon(
                      Icons.person,
                      size: 80.0,
                      color: ColorsPattern.gold,
                    ),
                  ),
                ),
                const SizedBox(width: 20.0),
                Text(
                  title,
                  style: const TextStyle(
                      color: ColorsPattern.yellow,
                      decoration: TextDecoration.none,
                      fontSize: 24,
                      fontFamily: AutofillHints.streetAddressLevel3),
                ),
              ],
            ),
            const SizedBox(height: 24),
            const ProfileButtons()
          ],
        ),
      ),
    );
  }
}
