import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/support/support_logic.dart';

class SupportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SupportLogic());
  }
}
