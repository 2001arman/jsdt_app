import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/november/november_logic.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';
import 'package:jsdt_app/utility/shared/widgets/button_items.dart';

class NovemberUi extends StatelessWidget {
  static const String namePath = '/november_ui';
  final logic = Get.find<NovemberLogic>();
  final state = Get.find<NovemberLogic>().state;
  NovemberUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        title: Text(
          'November Exams',
          style: mainTextStyle.copyWith(fontSize: 22, fontWeight: bold),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ...state.juneTest.map(
            (data) => ButtonItems(
              title: data,
              ontap: () {},
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'More Papers',
            style: mainTextStyle.copyWith(fontSize: 22, fontWeight: bold),
          ),
          const SizedBox(height: 15),
          ...state.juneTestKzn.map(
            (data) => ButtonItems(
              title: data,
              ontap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
