import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/home_logic.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeLogic());
  }
}
