import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/june/june_logic.dart';

class JuneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JuneLogic());
  }
}
