import 'package:easyjobfrontend/features/student/register_student.dart';
import 'package:easyjobfrontend/features/teachers/register_teacher.dart';
import 'package:easyjobfrontend/widgtes/gradient_background.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DefaultBackgroundGradient(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 270.0),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                  ),
                  Text(
                    "Olá",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, color: title),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "bem vindo de volta",
                    style: TextStyle(fontSize: 18, color: subtitle),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'email',
                      filled: true,
                      fillColor: Color(0xFF212452),
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'senha',
                      filled: true,
                      fillColor: Color(0xFF212452),
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Text(
                      "Não tem uma conta?",
                      style: TextStyle(color: title),
                    ),
                    TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: backgroundModal,
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Você é um:",
                                    style: TextStyle(color: title),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => RegisterTeacher()),
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          primary: backgroundButton,
                                          onPrimary: Colors.white,
                                        ),
                                        child: Text('Professor'),
                                      ),
                                      SizedBox(width: 16),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => RegisterStudent()),
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          primary: backgroundButton,
                                          onPrimary: Colors.white,
                                        ),
                                        child: Text('Pais e responsáveis'),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Text(
                        "Cadastre-se",
                        style: TextStyle(color: title, fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
                  SizedBox(
                    height: 200,
                  ),
                  SizedBox(
                    width: 270,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => LoginScreen()),
                        // );
                      },
                      child: Text(
                        'Fazer login',
                        style: TextStyle(fontSize: 22),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: backgroundButton,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
