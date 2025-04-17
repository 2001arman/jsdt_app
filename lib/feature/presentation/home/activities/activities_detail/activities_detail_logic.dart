import 'package:get/get.dart';
import 'package:jsdt_app/feature/domain/activity/activity_model.dart';

class ActivitiesDetailLogic extends GetxController {
  late ActivityModel activityModel;

  @override
  void onInit() {
    activityModel = Get.arguments;
    super.onInit();
  }
}
