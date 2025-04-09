import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/auth/auth_logic.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthLogic());
  }
}
