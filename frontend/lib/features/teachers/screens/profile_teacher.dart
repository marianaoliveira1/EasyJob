import 'package:easyjobfrontend/screens/login/model/usuario.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
          DefaultBackgroundGradient(),
          Padding(
            padding: EdgeInsets.all(50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 700,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        width: 130,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.0),
                          color: backgroundButton,
                        ),
                        child: Text(
                          widget.profanuncio.materia,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        widget.profanuncio.nome,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: title),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        widget.profanuncio.descricao,
                        style: TextStyle(fontSize: 23, color: subtitleprofessor, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Text(
                            "Preço por hora:",
                            style: TextStyle(fontSize: 23, color: title),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          Text(
                            "R\S " + widget.profanuncio.preco.toString(),
                            style: TextStyle(
                              fontSize: 23,
                              color: title,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        widget.profanuncio.dia_semana,
                        style: TextStyle(fontSize: 23, color: title),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Horario de inicio: " + widget.profanuncio.horario_comeco,
                        style: TextStyle(fontSize: 23, color: title),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Horario de termino: " + widget.profanuncio.horario_fim,
                        style: TextStyle(fontSize: 23, color: title),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 270,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Center(
                            child: Text(
                              'Entre em contato pelo WhatsApp',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
