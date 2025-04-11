import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/activities/activities_logic.dart';

class ActiviesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ActivitiesLogic());
  }
}
