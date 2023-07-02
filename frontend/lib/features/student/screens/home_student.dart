import 'package:easyjobfrontend/controller/controller_anuncio_professor.dart';
import 'package:easyjobfrontend/screens/login/model/usuario.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/colors.dart';
import '../../../widgtes/card_teacher.dart';
import '../../../widgtes/gradient_background.dart';

class HomeScreenStudent extends StatefulWidget {
  const HomeScreenStudent({super.key});

  @override
  State<HomeScreenStudent> createState() => _HomeScreenStudentState();
}

class _HomeScreenStudentState extends State<HomeScreenStudent> {
  @override
  Widget build(BuildContext context) {
    var cProfessores = Get.find<ControllerAnuncioProfessor>();
    return Scaffold(
      body: Stack(
        children: [
          DefaultBackgroundGradient(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "EASYJOB",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: title),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Expanded(
                      child: TextField(
                        controller: cProfessores.pesquisacontroller,
                        style: TextStyle(color: title),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search, color: title),
                          labelText: 'Pesquise por um um professor',
                          labelStyle: TextStyle(color: title),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Expanded(child: Obx(() {
                  List<EntityProfessorAnuncio> anunciosProfessorFiltrado = cProfessores.anunciosProfessor
                      .where(
                        (prof) => prof.nome.toLowerCase().contains(
                              cProfessores.filter.toLowerCase(),
                            ),
                      )
                      .toList();

                  return GridView.count(
                    crossAxisCount: 3,
                    childAspectRatio: MediaQuery.of(context).size.aspectRatio * 0.7,
                    children: [
                      for (var prof in anunciosProfessorFiltrado)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardTeacher(
                            profanuncio: prof,
                          ),
                        )
                    ],
                  );
                }))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
