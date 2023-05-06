import 'package:flutter/material.dart';

class TitleInitial extends StatelessWidget {
  const TitleInitial({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.0),
        child: Text(
          "EASYJOB",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32,
            color: const Color(0xffF7F7F7),
          ),
        ));
  }
}
