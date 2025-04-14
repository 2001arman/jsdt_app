import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/march/march_kzn/march_kzn_logic.dart';

class MarchKznBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MarchKznLogic());
  }
}
