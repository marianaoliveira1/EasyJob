import 'dart:async';

import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:easyjobfrontend/controller/controller.dart';
import 'package:easyjobfrontend/features/student/screens/register_student.dart';
import 'package:easyjobfrontend/features/teachers/screens/register_teacher.dart';
import 'package:easyjobfrontend/screens/login/server/usuario_server.dart';
import 'package:easyjobfrontend/widgtes/gradient_background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../utils/colors.dart';

final supabase = Supabase.instance.client;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKay = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _login(BuildContext context) async {
    final email = _emailController.text;
    final password = _passwordController.text;
    await Supabase.instance.client.auth.signInWithPassword(password: password, email: email);
  }

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
                      fillColor: Colors.transparent,
                      hintStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(
                          color: backgroundModal,
                          width: 1.0, // Defina a espessura da borda conforme necessário
                        ),
                      ),
                    ),
                    controller: _emailController,
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
                        fillColor: Colors.transparent,
                        hintStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          borderSide: BorderSide(
                            color: backgroundModal,
                            width: 1.0, // Defina a espessura da borda conforme necessário
                          ),
                        ),
                      ),
                      controller: _passwordController,
                      validator: (senha) {
                        if (senha == null || senha.isEmpty) {
                          return "Digite a senha";
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
                    RegistrationOption()
                  ]),
                  SizedBox(
                    height: 200,
                  ),
                  SizedBox(
                    width: 270,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKay.currentState!.validate()) {
                          _login(context);
                        }
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

class RegistrationOption extends StatelessWidget {
  const RegistrationOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
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
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterStudent(
                                  tipo: 0,
                                )),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: backgroundButton,
                      onPrimary: Colors.white,
                    ),
                    child: Text('Professor'),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterStudent(
                                  tipo: 1,
                                )),
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
            );
          },
        );
      },
      child: Text(
        "Cadastre-se",
        style: TextStyle(color: title, fontWeight: FontWeight.bold),
      ),
    );
  }
}
