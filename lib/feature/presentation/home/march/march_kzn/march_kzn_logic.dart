import 'package:get/get.dart';
import 'package:jsdt_app/feature/domain/march/kzn_model.dart';
import 'package:jsdt_app/feature/presentation/home/march/march_kzn/march_kzn_state.dart';

class MarchKznLogic extends GetxController {
  MarchKznState state = MarchKznState();
  late KznModel kznModel;

  @override
  void onInit() {
    kznModel = Get.arguments;
    super.onInit();
  }
}
