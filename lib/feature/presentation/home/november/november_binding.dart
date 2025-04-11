import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/november/november_logic.dart';

class NovemberBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NovemberLogic());
  }
}
