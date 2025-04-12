import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/practice/practice_logic.dart';

class PracticeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PracticeLogic());
  }
}
