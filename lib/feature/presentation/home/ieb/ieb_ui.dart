import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/ieb/ieb_detail/ieb_detail_ui.dart';
import 'package:jsdt_app/feature/presentation/home/ieb/ieb_logic.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';
import 'package:jsdt_app/utility/shared/widgets/ads_banner.dart';
import 'package:jsdt_app/utility/shared/widgets/button_items.dart';

class IebUi extends StatelessWidget {
  static const String namePath = '/ieb_page';
  final logic = Get.find<IebLogic>();
  final state = Get.find<IebLogic>().state;
  IebUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kWhiteColor,
        title: Text(
          'IEB',
          style: mainTextStyle.copyWith(fontSize: 22, fontWeight: bold),
        ),
      ),
      bottomNavigationBar: const AdsBanner(),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            'June Exams',
            style: mainTextStyle.copyWith(fontSize: 22, fontWeight: bold),
          ),
          const SizedBox(height: 15),
          ...state.juneExams.map(
            (data) => ButtonItems(
              title: data.title,
              ontap: () => Get.toNamed(
                IebDetailUi.namePath,
                arguments: data.items,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'November Exams',
            style: mainTextStyle.copyWith(fontSize: 22, fontWeight: bold),
          ),
          const SizedBox(height: 15),
          ...state.novemberExams.map(
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
    );
  }
}
