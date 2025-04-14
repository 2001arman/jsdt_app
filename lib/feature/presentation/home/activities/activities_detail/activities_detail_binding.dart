import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/activities/activities_detail/activities_detail_logic.dart';

class ActivitiesDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ActivitiesDetailLogic());
  }
}
