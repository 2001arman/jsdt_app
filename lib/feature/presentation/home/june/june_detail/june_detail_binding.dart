import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/june/june_detail/june_detail_logic.dart';

class JuneDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JuneDetailLogic());
  }
}
