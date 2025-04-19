import 'package:get/get.dart';
import 'package:jsdt_app/feature/domain/june/june_model.dart';

class JuneDetailLogic extends GetxController {
  late JuneModel juneModel;

  @override
  void onInit() {
    juneModel = Get.arguments;
    super.onInit();
  }
}
