import 'dart:async';

import 'package:flutter_svg/svg.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:easyjobfrontend/screens/register/register_screen.dart';

import 'package:easyjobfrontend/widgtes/gradient_background.dart';
import 'package:flutter/material.dart';

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
      body: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150, left: 100, right: 60),
                child: SvgPicture.asset(
                  "assets/login-screen.svg",
                  width: 500,
                  height: 500,
                ),
              )
            ],
          ),
          Expanded(
            child: Column(
              children: [
                Form(
                  key: _formKay,
                  child: Container(
                    padding: EdgeInsets.only(left: 70, right: 150),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 200,
                        ),
                        Text(
                          "Faça login para acessar sua conta.",
                          style: TextStyle(fontSize: 28, color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 20,
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
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Não tem uma conta?",
                              style: TextStyle(color: subtitle),
                            ),
                            RegistrationOption()
                          ],
                        ),
                        SizedBox(
                          height: 30,
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
                              'Entrar',
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
                ),
              ],
            ),
          ),
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
        style: TextStyle(color: title),
      ),
    );
  }
}
