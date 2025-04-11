import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/march/march_logic.dart';

class MarchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MarchLogic());
  }
}
