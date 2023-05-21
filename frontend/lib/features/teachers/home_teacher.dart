import 'package:flutter/material.dart';

import '../../widgtes/card_teacher.dart';
import '../../widgtes/gradient_background.dart';

class HomeScreenStudent extends StatefulWidget {
  const HomeScreenStudent({super.key});

  @override
  State<HomeScreenStudent> createState() => _HomeScreenStudentState();
}

class _HomeScreenStudentState extends State<HomeScreenStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DefaultBackgroundGradient(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 70.0),
            child: CardTeacher(),
          )
        ],
      ),
    );
  }
}
