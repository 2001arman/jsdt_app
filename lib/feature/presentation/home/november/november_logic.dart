import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/feature/domain/june/june_model.dart';
import 'package:jsdt_app/feature/presentation/home/november/november_state.dart';

class NovemberLogic extends GetxController {
  NovemberState state = NovemberState();

  @override
  void onInit() {
    loadJsonAsset();
    super.onInit();
  }

  void loadJsonAsset() async {
    String one = await DefaultAssetBundle.of(Get.context!).loadString(
      "assets/november/november.json",
    );
    final jsonOne = jsonDecode(one);
    state.novemberTest.assignAll(juneModelListFromJson(jsonOne));
  }
}
