import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/ieb/ieb_logic.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';

class IebUi extends StatelessWidget {
  static const String namePath = '/ieb_page';
  final logic = Get.find<IebLogic>();
  final state = Get.find<IebLogic>().state;
  IebUi({super.key});

  @override
  Widget build(BuildContext context) {
    Widget item({required String title}) {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        margin: const EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kMainColor,
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: bold),
        ),
      );
    }

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
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            'June Exams',
            style: mainTextStyle.copyWith(fontSize: 22, fontWeight: bold),
          ),
          const SizedBox(height: 15),
          ...state.juneExams.map((data) => item(title: data)),
          const SizedBox(height: 20),
          Text(
            'November Exams',
            style: mainTextStyle.copyWith(fontSize: 22, fontWeight: bold),
          ),
          const SizedBox(height: 15),
          ...state.novExams.map((data) => item(title: data)),
        ],
      ),
    );
  }
}
