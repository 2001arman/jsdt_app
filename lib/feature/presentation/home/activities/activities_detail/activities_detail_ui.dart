import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/activities/activities_detail/activities_detail_logic.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';
import 'package:jsdt_app/utility/shared/widgets/activity_widget.dart';
import 'package:jsdt_app/utility/shared/widgets/ads_banner.dart';

class ActivitiesDetailUi extends StatelessWidget {
  static const String namePath = '/activities_detail_page';
  final logic = Get.find<ActivitiesDetailLogic>();
  ActivitiesDetailUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: Column(
          children: [
            const AdsBanner(),
            AppBar(
              backgroundColor: kWhiteColor,
              surfaceTintColor: kWhiteColor,
              title: Text(
                logic.title,
                style: mainTextStyle.copyWith(fontSize: 22, fontWeight: bold),
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(20),
                children: const [
                  ActivityWidget(),
                  ActivityWidget(),
                  ActivityWidget(),
                  ActivityWidget(),
                  ActivityWidget(),
                ],
              ),
            ),
            const AdsBanner(),
          ],
        ),
      ),
    );
  }
}
