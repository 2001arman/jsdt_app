import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/auth/auth_state.dart';

class AuthLogic extends GetxController {
  AuthState state = AuthState();

  @override
  void onInit() {
    super.onInit();
    state.authType = Get.arguments;
  }
}
