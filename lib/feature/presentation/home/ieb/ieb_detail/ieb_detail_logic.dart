import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/ieb/ieb_detail/ieb_detail_state.dart';

class IebDetailLogic extends GetxController {
  IebDetailState state = IebDetailState();

  @override
  void onInit() {
    state.items = Get.arguments;
    super.onInit();
  }
}
