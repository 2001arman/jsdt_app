import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/june/june_detail/june_detail_logic.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';

class JuneDetailUi extends StatelessWidget {
  static const String namePath = '/june_detail_page';
  final logic = Get.find<JuneDetailLogic>();
  JuneDetailUi({super.key});

  @override
  Widget build(BuildContext context) {
    Widget body() {
      return ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          // ActivityWidget(),
          // ActivityWidget(),
          // ActivityWidget(),
          // ActivityWidget(),
          // ActivityWidget(),
        ],
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
            logic.title,
            style: mainTextStyle.copyWith(fontSize: 22, fontWeight: bold),
          ),
          bottom: TabBar(
            labelColor: kMainColor,
            indicatorColor: kMainColor,
            tabs: const [
              Tab(text: 'Paper 1'),
              Tab(text: 'Paper 2'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            body(),
            body(),
          ],
        ),
      ),
    );
  }
}
