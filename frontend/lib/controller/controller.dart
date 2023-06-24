// ignore_for_file: deprecated_member_use

import 'package:easyjobfrontend/screens/login/model/usuario.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../features/student/screens/register_student.dart';

class ControllerAutenticacao extends GetxController {
  // ! Estado
  final Rxn<EntityUsuario> usuario = Rxn<EntityUsuario>();
  final Rxn<User> user = Rxn<User>();

  // ! Ciclo de vida
  @override
  void onInit() {
    Supabase.instance.client.auth.onAuthStateChange.listen((event) async {
      print("dlsds");
      user.value = event.session?.user;

      final response = await supabase.from('users').select().eq('email', user.value?.email).execute();
      usuario.value = EntityUsuario.fromMap(response.data[0]);
      if (usuario.value?.tipo == 0) {
        Get.toNamed('/cadastroprofessor');
      } else {
        Get.toNamed('/home');
      }
    });
    super.onInit();
  }
}
