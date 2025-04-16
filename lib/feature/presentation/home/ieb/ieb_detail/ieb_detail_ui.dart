import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/ieb/ieb_detail/ieb_detail_logic.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';
import 'package:jsdt_app/utility/shared/widgets/ads_banner.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class IebDetailUi extends StatefulWidget {
  static const String namePath = '/ieb_detail_page';

  const IebDetailUi({super.key});

  @override
  State<IebDetailUi> createState() => _IebDetailUiState();
}

class _IebDetailUiState extends State<IebDetailUi>
    with TickerProviderStateMixin {
  final logic = Get.find<IebDetailLogic>();
  final state = Get.find<IebDetailLogic>().state;

  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: state.items.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget tabItem({required int index, required String title}) {
      return GestureDetector(
        onTap: () {
          state.activeItem.value = index;
          _tabController.animateTo(index);
        },
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
                child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _tabController,
                  children: state.items
                      .map(
                        (data) => SfPdfViewer.network(
                          data,
                          canShowPageLoadingIndicator: false,
                        ),
                      )
                      .toList(),
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
