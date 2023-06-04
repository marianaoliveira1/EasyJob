import 'package:flutter/material.dart';

import '../../../utils/default_voltar_button.dart';
import '../../../utils/colors.dart';
import '../../../widgtes/gradient_background.dart';
import '../../teachers/screens/home_teacher.dart';

class RegisterStudent extends StatefulWidget {
  const RegisterStudent({super.key});

  @override
  State<RegisterStudent> createState() => _RegisterStudentState();
}

class _RegisterStudentState extends State<RegisterStudent> {
  final _formKay = GlobalKey<FormState>();
  final _namecontroller = TextEditingController();
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

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
                    "Que incrível que você quer aprender",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, color: title),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "O primeiro passo, é preencher esse formulário de inscrição.",
                    style: TextStyle(fontSize: 18, color: subtitle),
                  ),
                  SizedBox(
                    height: 120,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Nome completo',
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
                    controller: _namecontroller,
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
                      controller: _passwordcontroller,
                      validator: (senha) {
                        if (senha == null || senha.isEmpty) {
                          return "Digite a senha";
                        } else if (senha.length < 5) {
                          return "Digite uma senha maior que 5 caracteres";
                        }
                        return null;
                      }),
                  SizedBox(
                    height: 170,
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
