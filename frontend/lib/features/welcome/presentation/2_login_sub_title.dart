import 'package:flutter/material.dart';

class SubTitleInitial extends StatelessWidget {
  const SubTitleInitial({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.0),
        child: Text(
          "A plataforma que pode ajudar você a encontrar o \nprofessor mais perto do seu filho(a)",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: const Color(0xffF7F7F7),
          ),
        ));
  }
}
