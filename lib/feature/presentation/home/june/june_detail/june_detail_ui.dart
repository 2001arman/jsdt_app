import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/feature/domain/activity/activity_model.dart';
import 'package:jsdt_app/feature/presentation/home/june/june_detail/june_detail_logic.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';
import 'package:jsdt_app/utility/shared/widgets/activity_widget.dart';

class JuneDetailUi extends StatelessWidget {
  static const String namePath = '/june_detail_page';
  final logic = Get.find<JuneDetailLogic>();
  JuneDetailUi({super.key});

  @override
  Widget build(BuildContext context) {
    Widget body({
      required List<ActivityItem> activities,
    }) {
      return ListView(
        padding: const EdgeInsets.all(20),
        children: activities
            .map((data) => ActivityWidget(activityItem: data))
            .toList(),
      );
    }

    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        backgroundColor: kWhiteColor,
        appBar: AppBar(
          backgroundColor: kWhiteColor,
          title: Text(
            logic.juneModel.title,
            style: mainTextStyle.copyWith(fontSize: 22, fontWeight: bold),
          ),
          bottom: TabBar(
            labelColor: kMainColor,
            indicatorColor: kMainColor,
            tabs: [
              Tab(text: logic.juneModel.activities[0].title),
              Tab(text: logic.juneModel.activities[1].title),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
          body(activities: logic.juneModel.activities[0].items),
            body(activities: logic.juneModel.activities[1].items),
          ],
        ),
      ),
    );
  }
}
