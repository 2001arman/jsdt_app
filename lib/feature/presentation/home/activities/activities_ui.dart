import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/activities/activities_detail/activities_detail_ui.dart';
import 'package:jsdt_app/feature/presentation/home/activities/activities_logic.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';

class ActivitiesUi extends StatelessWidget {
  static const String namePath = '/activities_page';
  final logic = Get.find<ActivitiesLogic>();
  final state = Get.find<ActivitiesLogic>().state;
  ActivitiesUi({super.key});

  @override
  Widget build(BuildContext context) {
    Widget tabItem({
      required String title,
      required bool active,
      required int index,
    }) {
      return Expanded(
        child: GestureDetector(
          onTap: () => state.activeTab.value = index,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
              color: active ? kMainColor : kWhiteGreyColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              title,
              style: mainTextStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
                color: active ? kWhiteColor : kMainColor,
              ),
            ),
          ),
        ),
      );
    }

    Widget childItem({required String title}) {
      return GestureDetector(
        onTap: () => Get.toNamed(ActivitiesDetailUi.namePath, arguments: title),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: defaultBoxShadow,
          ),
          child: Text(
            title,
            style: mainTextStyle.copyWith(
              fontSize: 16,
              fontWeight: bold,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        title: Text(
          'Activities',
          style: mainTextStyle.copyWith(fontSize: 22, fontWeight: bold),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Obx(
                  () => Row(
                    spacing: 5,
                    children: [
                      tabItem(
                        title: 'Paper 1',
                        active: state.activeTab.value == 0,
                        index: 0,
                      ),
                      tabItem(
                        title: 'Paper 2',
                        active: state.activeTab.value == 1,
                        index: 1,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kMainColor,
                ),
                child: Obx(
                  () => Column(
                    children: state.activeTab.value == 0
                        ? state.paperOneItems
                            .map((data) => childItem(title: data))
                            .toList()
                        : state.paperTwoItems
                            .map((data) => childItem(title: data))
                            .toList(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
