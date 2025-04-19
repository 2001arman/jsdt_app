import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/feature/domain/june/june_model.dart';
import 'package:jsdt_app/feature/presentation/home/preliminary/preliminary_state.dart';

class PreliminaryLogic extends GetxController {
  PreliminaryState state = PreliminaryState();

  @override
  void onInit() {
    loadJsonAsset();
    super.onInit();
  }

  void loadJsonAsset() async {
    String one = await DefaultAssetBundle.of(Get.context!).loadString(
      "assets/preliminary/preliminary_exams.json",
    );
    final jsonOne = jsonDecode(one);
    state.preliminaryList.assignAll(juneModelListFromJson(jsonOne));
  }
}
