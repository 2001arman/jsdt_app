import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/june/june_kzn/june_kzn_logic.dart';

class JuneKznBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JuneKznLogic());
  }
}
