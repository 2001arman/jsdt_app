import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/ieb/ieb_logic.dart';

class IebBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IebLogic());
  }
}
