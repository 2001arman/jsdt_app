import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/ieb/ieb_detail/ieb_detail_ui.dart';
import 'package:jsdt_app/feature/presentation/home/june/june_detail/june_detail_ui.dart';
import 'package:jsdt_app/feature/presentation/home/june/june_logic.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';
import 'package:jsdt_app/utility/shared/widgets/ads_banner.dart';
import 'package:jsdt_app/utility/shared/widgets/button_items.dart';

class JuneUi extends StatelessWidget {
  static const String namePath = '/june_page';
  final logic = Get.find<JuneLogic>();
  final state = Get.find<JuneLogic>().state;
  JuneUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        title: Text(
          'June Exams',
          style: mainTextStyle.copyWith(fontSize: 22, fontWeight: bold),
        ),
      ),
      bottomNavigationBar: const AdsBanner(),
      body: Obx(
        () => ListView(
          padding: const EdgeInsets.all(20),
          children: [
            ...state.juneList.map(
              (data) => ButtonItems(
                title: data.title,
                ontap: () => Get.toNamed(
                  JuneDetailUi.namePath,
                  arguments: data.copyWith(title: '${data.title} - June Exams'),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'More Papers',
              style: mainTextStyle.copyWith(fontSize: 22, fontWeight: bold),
            ),
            const SizedBox(height: 15),
            ...state.otherPapers.map(
              (data) => ButtonItems(
                title: data.title,
                ontap: () => Get.toNamed(
                  IebDetailUi.namePath,
                  arguments: data.items,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
