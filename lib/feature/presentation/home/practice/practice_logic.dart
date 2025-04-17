import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/feature/domain/activity/activity_model.dart';
import 'package:jsdt_app/feature/presentation/home/practice/practice_state.dart';

class PracticeLogic extends GetxController {
  PracticeState state = PracticeState();

  @override
  void onInit() {
    loadJsonAsset();
    super.onInit();
  }

  void loadJsonAsset() async {
    String one = await DefaultAssetBundle.of(Get.context!).loadString(
      "assets/practice/practice-one.json",
    );
    final jsonOne = jsonDecode(one);
    state.paperOneList.assignAll(activityModelListFromJson(jsonOne));

    String two = await DefaultAssetBundle.of(Get.context!).loadString(
      "assets/practice/practice-two.json",
    );
    final jsonTwo = jsonDecode(two);
    state.paperTwoList.assignAll(activityModelListFromJson(jsonTwo));
  }
}
