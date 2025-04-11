import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/preliminary/preliminary_logic.dart';

class PreliminaryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PreliminaryLogic());
  }
}
