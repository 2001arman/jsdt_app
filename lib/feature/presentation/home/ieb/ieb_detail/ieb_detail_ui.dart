import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/ieb/ieb_detail/ieb_detail_logic.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';
import 'package:jsdt_app/utility/shared/widgets/ads_banner.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class IebDetailUi extends StatelessWidget {
  static const String namePath = '/ieb_detail_page';
  final logic = Get.find<IebDetailLogic>();
  final state = Get.find<IebDetailLogic>().state;
  IebDetailUi({super.key});

  @override
  Widget build(BuildContext context) {
    Widget tabItem({required int index, required String title}) {
      return GestureDetector(
        onTap: () => state.activeItem.value = index,
        child: Obx(
          () => Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            decoration: BoxDecoration(
              color: state.activeItem.value == index
                  ? kMainColor
                  : kWhiteGreyColor,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
            child: Text(
              title,
              style: whiteTextStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
                color:
                    state.activeItem.value == index ? kWhiteColor : kMainColor,
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 2,
                children: state.itemList
                    .asMap()
                    .entries
                    .map(
                      (data) => tabItem(index: data.key, title: data.value),
                    )
                    .toList(),
              ),
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
