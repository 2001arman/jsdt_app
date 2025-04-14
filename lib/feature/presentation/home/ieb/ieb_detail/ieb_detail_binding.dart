import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/ieb/ieb_detail/ieb_detail_logic.dart';

class IebDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IebDetailLogic());
  }
}
