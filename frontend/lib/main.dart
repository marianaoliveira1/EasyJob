import 'package:easyjobfrontend/controller/controller.dart';
import 'package:easyjobfrontend/features/student/screens/register_student.dart';
import 'package:easyjobfrontend/features/teachers/screens/profile_teacher.dart';
import 'package:easyjobfrontend/features/teachers/screens/register_teacher.dart';
import 'package:easyjobfrontend/screens/login/login_screen.dart';
import 'package:easyjobfrontend/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/student/screens/home_student.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ControllerAutenticacao());

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
