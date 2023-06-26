import 'package:easyjobfrontend/screens/login/model/usuario.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../screens/login/login_screen.dart';

class ControllerAnuncioProfessor extends GetxController {
  late final RxList<EntityProfessorAnuncio> anunciosProfessor = RxList<EntityProfessorAnuncio>();
  final RxString filter = RxString("");
  final pesquisacontroller = TextEditingController();

  @override
  void onInit() {
    pesquisacontroller.addListener(() {
      filter.value = pesquisacontroller.text;
    });
    supabase.from('professor').stream(primaryKey: [
      'id'
    ]).listen((event) {
      List<EntityProfessorAnuncio> newProfessores = [];
      for (var row in event) {
        newProfessores.add(EntityProfessorAnuncio.fromMap(row as Map<String, dynamic>));
      }
      anunciosProfessor.value = newProfessores;
    });

    super.onInit();
  }
}
