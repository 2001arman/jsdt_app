import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/activities/activities_detail/activities_detail_ui.dart';
import 'package:jsdt_app/feature/presentation/home/march/march_kzn/march_kzn_ui.dart';
import 'package:jsdt_app/feature/presentation/home/march/march_logic.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';
import 'package:jsdt_app/utility/shared/widgets/ads_banner.dart';
import 'package:jsdt_app/utility/shared/widgets/button_items.dart';

class MarchUi extends StatelessWidget {
  static const String namePath = '/march_ui';
  final logic = Get.find<MarchLogic>();
  final state = Get.find<MarchLogic>().state;
  MarchUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        title: Text(
          'March Tests',
          style: mainTextStyle.copyWith(fontSize: 22, fontWeight: bold),
        ),
      ),
      bottomNavigationBar: const AdsBanner(),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ...state.marchTest.map(
            (data) => ButtonItems(
              title: data.title,
              ontap: () {
                Get.toNamed(
                  ActivitiesDetailUi.namePath,
                  arguments: data.copyWith(
                    title: '${data.title} - March Test',
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'More Papers',
            style: mainTextStyle.copyWith(fontSize: 22, fontWeight: bold),
          ),
          const SizedBox(height: 15),
          ...state.marchTestKzn.map(
            (data) => ButtonItems(
              title: data.title,
              ontap: () => Get.toNamed(MarchKznUi.namePath, arguments: data),
            ),
          ),
        ],
      ),
    );
  }
}
