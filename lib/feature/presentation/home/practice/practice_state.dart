import 'package:get/get.dart';
import 'package:jsdt_app/feature/domain/activity/activity_model.dart';

class PracticeState {
  RxInt activeTab = 0.obs;

  RxList<ActivityModel> paperOneList = <ActivityModel>[].obs;
  RxList<ActivityModel> paperTwoList = <ActivityModel>[].obs;
}
