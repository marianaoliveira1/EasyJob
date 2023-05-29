import 'package:easyjobfrontend/screens/welcome/welcome_screen.dart';
import 'package:easyjobfrontend/widgtes/card_teacher.dart';
import 'package:flutter/material.dart';

import 'features/student/screens/home_student.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "EasyJob",
      debugShowCheckedModeBanner: false,
      home: CardTeacher(),
    );
  }
}
