import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/march/march_kzn/march_kzn_logic.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';
import 'package:jsdt_app/utility/shared/widgets/ads_banner.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class MarchKznUi extends StatelessWidget {
  static const String namePath = '/march_kzn_page';
  final logic = Get.find<MarchKznLogic>();
  final state = Get.find<MarchKznLogic>().state;
  MarchKznUi({super.key});

  @override
  Widget build(BuildContext context) {
    Widget tabItem({required String title}) {
      return Expanded(
        child: GestureDetector(
          onTap: () => state.activeMenu.value = title,
          child: Obx(
            () => Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              decoration: BoxDecoration(
                color: state.activeMenu.value == title
                    ? kMainColor
                    : kWhiteGreyColor,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                title,
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: bold,
                  color: state.activeMenu.value == title
                      ? kWhiteColor
                      : kMainColor,
                ),
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: Column(
          children: [
            const AdsBanner(),
            const SizedBox(height: 15),
            Row(
              spacing: 2,
              children: [
                tabItem(title: 'QUESTION PAPER'),
                tabItem(title: 'MEMORANDUM'),
              ],
            ),
            Expanded(
              child: Container(
                color: kMainColor,
                padding: const EdgeInsets.all(16),
                child: SfPdfViewer.network(
                  'https://drive.google.com/uc?export=download&id=1afWbJ4lioAi0u8IoL2DhGu5E0xFMYc7D',
                ),
              ),
            ),
            const AdsBanner(),
          ],
        ),
      ),
    );
  }
}
