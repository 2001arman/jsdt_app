import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/quiz/quiz_list/quiz_list_logic.dart';
import 'package:jsdt_app/feature/presentation/home/quiz/quizez/quizez_ui.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';
import 'package:jsdt_app/utility/shared/widgets/ads_banner.dart';

class QuizListUi extends StatelessWidget {
  static const String namePath = '/quiz_list_page';
  final logic = Get.find<QuizListLogic>();
  QuizListUi({super.key});

  @override
  Widget build(BuildContext context) {
    Widget button({
      required String title,
      required VoidCallback onTap,
    }) {
      return GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: kMainColor,
            boxShadow: defaultBoxShadow,
          ),
          child: Text(
            title,
            style: whiteTextStyle.copyWith(fontWeight: bold),
          ),
        ),
      );
    }

    Widget quizItem({
      required String title,
      required int total,
    }) {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kWhiteColor,
          boxShadow: defaultBoxShadow,
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 16),
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kMainColor,
                boxShadow: defaultBoxShadow,
              ),
              child: Text(
                title,
                style: whiteTextStyle.copyWith(fontWeight: bold),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Score',
                    style: mainTextStyle,
                  ),
                  Text(
                    '$total/20',
                    style:
                        mainTextStyle.copyWith(fontSize: 16, fontWeight: bold),
                  )
                ],
              ),
            ),
            total != 0
                ? Row(
                    spacing: 5,
                    children: [
                      button(
                        title: 'Retry',
                        onTap: () {},
                      ),
                      button(
                        title: 'Review',
                        onTap: () {},
                      ),
                    ],
                  )
                : button(
                    title: 'Start',
                    onTap: () => Get.toNamed(QuizezUi.namePath),
                  ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        title: Text(
          'Paper 1 Topic 1 Tests',
          style: mainTextStyle.copyWith(fontSize: 22, fontWeight: bold),
        ),
      ),
      bottomNavigationBar: const AdsBanner(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          spacing: 16,
          children: [
            quizItem(title: "TEST\n1", total: 0),
            quizItem(title: "TEST\n2", total: 14),
            quizItem(title: "TEST\n3", total: 12),
            quizItem(title: "TEST\n4", total: 09),
            quizItem(title: "TEST\n5", total: 10),
          ],
        ),
      ),
    );
  }
}
