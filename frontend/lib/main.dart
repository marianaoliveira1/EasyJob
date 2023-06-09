import 'package:easyjobfrontend/features/student/screens/register_student.dart';
import 'package:easyjobfrontend/features/teachers/screens/home_teacher.dart';
import 'package:easyjobfrontend/features/teachers/screens/profile_teacher.dart';
import 'package:easyjobfrontend/features/teachers/screens/register_teacher.dart';
import 'package:easyjobfrontend/screens/login/login_screen.dart';
import 'package:easyjobfrontend/screens/welcome/welcome_screen.dart';
import 'package:easyjobfrontend/widgtes/gradient_background.dart';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "EasyJob",
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/',
          page: () => WelcomeScreen(),
          transition: Transition.downToUp,
        ),
        GetPage(
          name: '/login',
          page: () => LoginScreen(),
          transition: Transition.downToUp,
        ),
        GetPage(
          name: '/cadastropai',
          page: () => RegisterStudent(),
          transition: Transition.downToUp,
        ),
        GetPage(
          name: '/cadastroprofessor',
          page: () => RegisterTeacher(),
          transition: Transition.downToUp,
        ),
        GetPage(
          name: '/homepai',
          page: () => HomeScreenStudent(),
          transition: Transition.downToUp,
        ),
        GetPage(
          name: '/perfildoprofessor',
          page: () => ProfileTeacherScreen(),
          transition: Transition.downToUp,
        ),
      ],
    );
  }
}
