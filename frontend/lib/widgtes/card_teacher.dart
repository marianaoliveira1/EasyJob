import 'package:easyjobfrontend/features/teachers/screens/profile_teacher.dart';
import 'package:easyjobfrontend/screens/login/model/usuario.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

import '../utils/colors.dart';

class CardTeacher extends StatefulWidget {
  const CardTeacher({super.key, required this.profanuncio});

  final EntityProfessorAnuncio profanuncio;
  @override
  State<CardTeacher> createState() => _CardTeacherState();
}

class _CardTeacherState extends State<CardTeacher> {
  @override
  Widget build(BuildContext context) {
    return OutlineGradientButton(
      gradient: LinearGradient(
        colors: [
          Color(0xff5E2EC4),
          Color(0xff4150D7)
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      strokeWidth: 2,
      radius: Radius.circular(16),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.profanuncio.nome,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: title),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Preço por aula/hora ",
                  style: TextStyle(fontSize: 18, color: title),
                ),
                Text(
                  widget.profanuncio.preco.toString(),
                  style: TextStyle(fontSize: 18, color: title, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Matéria",
                  style: TextStyle(fontSize: 18, color: title),
                ),
                Text(
                  widget.profanuncio.materia,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: title),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.profanuncio.descricao,
              style: TextStyle(fontSize: 18, color: title),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 45,
              color: Color(0xff5E2EC4),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfileTeacherScreen(
                              profanuncio: widget.profanuncio,
                            )),
                  );
                },
                child: Text(
                  "Detalhes do professor",
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
