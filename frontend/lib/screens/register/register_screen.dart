import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:postgres/postgres.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../utils/default_voltar_button.dart';
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
                    height: 10,
                  ),
                  DefaultVoltarButton(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "O primeiro passo, é preencher esse formulário de inscrição.",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, color: title),
                  ),
                  SizedBox(
                    height: 120,
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
                    height: 100,
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
          )
        ],
      ),
    );
  }
}
