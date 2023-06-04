import 'package:easyjobfrontend/features/student/screens/register_student.dart';
import 'package:easyjobfrontend/features/teachers/screens/register_teacher.dart';
import 'package:easyjobfrontend/widgtes/gradient_background.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKay = GlobalKey<FormState>();
  final _namecontroller = TextEditingController();
  final _emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DefaultBackgroundGradient(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 270.0),
            child: Form(
              key: _formKay,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
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
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Seu email',
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
                    controller: _emailcontroller,
                    validator: (email) {
                      if (email == null || email.isEmpty) {
                        return "Digite o seu email";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Sua senha',
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
                      validator: (senha) {
                        if (senha == null || senha.isEmpty) {
                          return "Digite a senha";
                        } else if (senha.length < 5) {
                          return "Digite uma senha maior que 5 caracteres";
                        }
                        return null;
                      }),
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
                        if (_formKay.currentState!.validate()) {}
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
