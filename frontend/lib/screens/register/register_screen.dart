import 'package:easyjobfrontend/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:postgres/postgres.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../utils/colors.dart';
import '../../widgtes/gradient_background.dart';

final supabase = Supabase.instance.client;

class RegisterStudent extends StatefulWidget {
  const RegisterStudent({super.key, required this.tipo});
  final int tipo;

  @override
  State<RegisterStudent> createState() => _RegisterStudentState();
}

class _RegisterStudentState extends State<RegisterStudent> {
  final _formKay = GlobalKey<FormState>();

  final TextEditingController _nomecontroller = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  late PostgreSQLConnection _connection;
  Future<void> _registro(BuildContext context) async {
    // !
    final name = _nomecontroller.text;
    final tipo = widget.tipo;
    final email = _emailController.text;
    final password = _passwordController.text;

    // *
    await Supabase.instance.client.from('usuario').insert([
      {
        'nome': name,
        'email': email,
        'tipo': tipo,
      }
    ]);
    await Supabase.instance.client.auth.signUp(
      password: password,
      email: email,
    );
  }

  @override
  void dispose() {
    _connection?.close();
    super.dispose();
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
                  "assets/register-screen.svg",
                  width: 500,
                  height: 500,
                ),
              )
            ],
          ),
          Expanded(
            child: Form(
              key: _formKay,
              child: Container(
                padding: EdgeInsets.only(left: 70, right: 150),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Crie uma nova conta para aproveitar todos os recursos disponíveis.",
                      style: TextStyle(fontSize: 28, color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Nome completo',
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
                      controller: _nomecontroller,
                      validator: (name) {
                        if (name == null || name.isEmpty) {
                          return "Digite o seu nome";
                        }
                        return null;
                      },
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
                        controller: _passwordController,
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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Já tem uma conta?",
                          style: TextStyle(color: subtitle),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginScreen()),
                            );
                          },
                          child: Text(
                            "Fazer login",
                            style: TextStyle(color: title),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: 270,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKay.currentState!.validate()) {
                            _registro(context);
                          }
                        },
                        child: Text(
                          'Fazer cadastro',
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
          ),
        ],
      ),
    );
  }
}
