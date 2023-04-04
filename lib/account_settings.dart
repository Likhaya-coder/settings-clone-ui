import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccountSettings extends StatelessWidget {
  final IconData icon;
  final String text;

  const AccountSettings({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(icon),
            ),
            Text(text),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 18.0),
          child: Icon(
            FontAwesomeIcons.chevronRight,
            size: 16,
          ),
        )
      ],
    );
  }
}