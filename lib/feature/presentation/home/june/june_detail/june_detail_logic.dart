import 'package:get/get.dart';

class JuneDetailLogic extends GetxController {
  late String title;

  @override
  void onInit() {
    title = Get.arguments;
    super.onInit();
  }
}
