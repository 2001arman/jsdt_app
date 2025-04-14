import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/exampler/exampler_logic.dart';

class ExamplerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExamplerLogic());
  }
}
