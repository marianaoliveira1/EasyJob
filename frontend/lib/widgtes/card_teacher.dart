import 'package:easyjobfrontend/widgtes/gradiend_card_backrgound.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CardTeacher extends StatefulWidget {
  const CardTeacher({super.key});

  @override
  State<CardTeacher> createState() => _CardTeacherState();
}

class _CardTeacherState extends State<CardTeacher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DefaultBackgroundCardTeacher(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Text(
                  "Marinaa Oliveira Fernandes",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: title),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
