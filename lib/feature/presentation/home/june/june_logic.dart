import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/feature/domain/june/june_model.dart';
import 'package:jsdt_app/feature/presentation/home/june/june_state.dart';

class JuneLogic extends GetxController {
  JuneState state = JuneState();

  @override
  void onInit() {
    loadJsonAsset();
    super.onInit();
  }

  void loadJsonAsset() async {
    String one = await DefaultAssetBundle.of(Get.context!).loadString(
      "assets/june/june_exams.json",
    );
    final jsonOne = jsonDecode(one);
    state.juneList.assignAll(juneModelListFromJson(jsonOne));
  }
}
