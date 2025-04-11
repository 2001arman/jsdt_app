import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/preliminary/preliminary_logic.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';
import 'package:jsdt_app/utility/shared/widgets/button_items.dart';

class PreliminaryUi extends StatelessWidget {
  static const String namePath = '/preliminary_page';
  final logic = Get.find<PreliminaryLogic>();
  final state = Get.find<PreliminaryLogic>().state;
  PreliminaryUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        title: Text(
          'Preliminary Exams',
          style: mainTextStyle.copyWith(fontSize: 22, fontWeight: bold),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ...state.juneTest.map((data) => ButtonItems(title: data)),
          const SizedBox(height: 20),
          Text(
            'More Papers',
            style: mainTextStyle.copyWith(fontSize: 22, fontWeight: bold),
          ),
          const SizedBox(height: 15),
          ...state.juneTestKzn.map((data) => ButtonItems(title: data)),
        ],
      ),
    );
  }
}
