import 'package:easyjobfrontend/controller/controller.dart';
import 'package:easyjobfrontend/controller/controller_anuncio_professor.dart';
import 'package:easyjobfrontend/features/teachers/screens/profile_teacher.dart';
import 'package:easyjobfrontend/features/teachers/screens/register_teacher.dart';
import 'package:easyjobfrontend/screens/login/login_screen.dart';
import 'package:easyjobfrontend/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/student/screens/home_student.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await Supabase.initialize(url: 'https://qnriilomkiywljycrjkm.supabase.co', anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFucmlpbG9ta2l5d2xqeWNyamttIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODcyNjc0MDMsImV4cCI6MjAwMjg0MzQwM30.6qTJ_G8upBU-1zNuGMc2vWQQn6nS8uVMPPieViDyTB8');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(ControllerAutenticacao());
    Get.put(ControllerAnuncioProfessor());

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
          name: '/cadastro',
          page: () => RegisterTeacher(),
          transition: Transition.downToUp,
        ),
        GetPage(
          name: '/home',
          page: () => HomeScreenStudent(),
          transition: Transition.downToUp,
        ),
        GetPage(
          name: '/cadastroprofessor',
          page: () => RegisterTeacher(),
          transition: Transition.downToUp,
        ),
        // GetPage(
        //   name: '/perfildoprofessor',
        //   page: () => ProfileTeacherScreen(),
        //   transition: Transition.downToUp,
        // ),
      ],
    );
  }
}
