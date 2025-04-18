import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/march/march_kzn/march_kzn_logic.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';
import 'package:jsdt_app/utility/shared/widgets/ads_banner.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class MarchKznUi extends StatefulWidget {
  static const String namePath = '/march_kzn_page';

  const MarchKznUi({super.key});

  @override
  State<MarchKznUi> createState() => _MarchKznUiState();
}

class _MarchKznUiState extends State<MarchKznUi> with TickerProviderStateMixin {
  final logic = Get.find<MarchKznLogic>();
  final state = Get.find<MarchKznLogic>().state;

  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget tabItem({required String title, required int index}) {
      return Expanded(
        child: GestureDetector(
          onTap: () {
            state.activeMenu.value = title;
            _tabController.animateTo(index);
          },
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
                tabItem(
                  title: 'QUESTION PAPER',
                  index: 0,
                ),
                tabItem(
                  title: 'MEMORANDUM',
                  index: 1,
                ),
              ],
            ),
            Expanded(
              child: Container(
                color: kMainColor,
                padding: const EdgeInsets.all(16),
                child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _tabController,
                  children: [
                    SfPdfViewer.network(
                      "https://drive.google.com/uc?export=download&id=${logic.kznModel.qustionPaper}",
                      canShowPageLoadingIndicator: false,
                      canShowScrollHead: false,
                    ),
                    SfPdfViewer.network(
                      "https://drive.google.com/uc?export=download&id=${logic.kznModel.memorandum}",
                      canShowPageLoadingIndicator: false,
                      canShowScrollHead: false,
                    ),
                  ],
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
