import 'package:easyjobfrontend/features/student/screens/home_student.dart';
import 'package:flutter/material.dart';

import '../../../utils/default_voltar_button.dart';
import '../../../utils/colors.dart';
import '../../../widgtes/gradient_background.dart';

class RegisterTeacher extends StatelessWidget {
  const RegisterTeacher({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DefaultBackgroundGradient(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 270.0),
            child: Center(
              child: ListView(children: [
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    DefaultVoltarButton(),
                    SizedBox(
                      height: 90,
                    ),
                    Text(
                      "Que incrível que você quer dar aulas",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, color: title),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "O primeiro passo, é preencher esse formulário de inscrição",
                      style: TextStyle(fontSize: 18, color: subtitle),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Seus dados",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: title),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
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
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
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
                        hintText: 'Senha',
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
                      decoration: InputDecoration(
                        hintText: 'Cidade/Estado',
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
                      decoration: InputDecoration(
                        hintText: 'WhatsApp',
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
                      minLines: 1, // Set this
                      maxLines: 6, // and this
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        hintText: 'Sobre você',
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
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Sobre as aulas",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: title),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Materias',
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
                      decoration: InputDecoration(
                        hintText: 'Custo da sua hora por aula (R\$)',
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
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Horários disponíveis",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: title),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Dias da semana',
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
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Horários',
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
                      height: 80,
                    ),
                    SizedBox(
                      width: 270,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomeScreenStudent()),
                          );
                        },
                        child: Text(
                          'Cadastrar',
                          style: TextStyle(fontSize: 22),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: backgroundButton,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 90,
                    ),
                  ],
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
