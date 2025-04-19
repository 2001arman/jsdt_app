import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/feature/domain/june/june_model.dart';
import 'package:jsdt_app/feature/presentation/home/home_state.dart';

class HomeLogic extends GetxController {
  HomeState state = HomeState();

  @override
  void onInit() {
    loadJsonAsset();
    super.onInit();
  }

  void loadJsonAsset() async {
    String one = await DefaultAssetBundle.of(Get.context!).loadString(
      "assets/exampler/exampler.json",
    );
    final jsonOne = jsonDecode(one);
    final examplerData = juneModelListFromJson(jsonOne);
    state.homeMenus[8].value = state.homeMenus[8].value.copyWith(
      argument: examplerData.first,
    );
  }
}
