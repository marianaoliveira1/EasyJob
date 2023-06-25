import 'package:easyjobfrontend/screens/login/model/usuario.dart';
import 'package:easyjobfrontend/utils/default_voltar_button.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../widgtes/gradient_background.dart';

class ProfileTeacherScreen extends StatefulWidget {
  const ProfileTeacherScreen({
    super.key,
    required this.profanuncio,
  });

  final EntityProfessorAnuncio profanuncio;
  @override
  State<ProfileTeacherScreen> createState() => _ProfileTeacherScreenState();
}

class _ProfileTeacherScreenState extends State<ProfileTeacherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DefaultVoltarButton(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Descrição",
                      style: TextStyle(fontSize: 14, color: title),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.profanuncio.descricao,
                      style: TextStyle(fontSize: 18, color: title),
                    ),
                    Text(
                      "Dias",
                      style: TextStyle(fontSize: 14, color: title),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.profanuncio.dia_semana,
                      style: TextStyle(fontSize: 18, color: title),
                    ),
                    Text(
                      "Horario de inicio: " + widget.profanuncio.horario_comeco,
                      style: TextStyle(fontSize: 18, color: title),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Horario de termino: " + widget.profanuncio.horario_fim,
                      style: TextStyle(fontSize: 18, color: title),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.profanuncio.nome,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: title),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Preço por hora:",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: title),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          widget.profanuncio.preco.toString(),
                          style: TextStyle(fontSize: 20, color: title),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Color(0xff04D361),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Entrar em contato",
                          style: TextStyle(fontSize: 18, color: title),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
