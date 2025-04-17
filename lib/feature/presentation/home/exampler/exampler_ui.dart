import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/exampler/exampler_logic.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';
import 'package:jsdt_app/utility/shared/widgets/ads_banner.dart';

class ExamplerUi extends StatelessWidget {
  static const String namePath = '/exampler_ui';
  final logic = Get.find<ExamplerLogic>();
  ExamplerUi({super.key});

  @override
  Widget build(BuildContext context) {
    Widget body() {
      return ListView(
        padding: const EdgeInsets.all(20),
        // children: const [
        //   ActivityWidget(),
        //   ActivityWidget(),
        //   ActivityWidget(),
        //   ActivityWidget(),
        //   ActivityWidget(),
        // ],
      );
    }

    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        backgroundColor: kWhiteColor,
        bottomNavigationBar: const AdsBanner(),
        appBar: AppBar(
          backgroundColor: kWhiteColor,
          title: Text(
            'Examplers',
            style: mainTextStyle.copyWith(fontSize: 22, fontWeight: bold),
          ),
          bottom: TabBar(
            labelColor: kMainColor,
            indicatorColor: kMainColor,
            tabs: const [
              Tab(text: 'Exampler 2019 P1'),
              Tab(text: 'Exampler 2019 P2'),
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
