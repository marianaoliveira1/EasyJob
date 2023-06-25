import 'package:easyjobfrontend/screens/login/model/usuario.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../screens/login/login_screen.dart';

class ControllerAnuncioProfessor extends GetxController {
  final RxList<EntityProfessorAnuncio> professor_anuncio = RxList<EntityProfessorAnuncio>();
  // final RxString filter = RxString();

  @override
  void onInit() {
    supabase.from('professor').stream(primaryKey: [
      'id'
    ]).listen((event) {
      List<EntityProfessorAnuncio> newProfessores = [];
      for (var row in event) {
        newProfessores.add(EntityProfessorAnuncio.fromMap(row as Map<String, dynamic>));
      }
      professor_anuncio.value = newProfessores;
    });

    super.onInit();
  }
}
