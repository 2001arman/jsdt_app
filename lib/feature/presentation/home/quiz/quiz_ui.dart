import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/quiz/quiz_list/quiz_list_ui.dart';
import 'package:jsdt_app/feature/presentation/home/quiz/quiz_logic.dart';
import 'package:jsdt_app/feature/presentation/home/quiz/quiz_state.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';

class QuizUi extends StatelessWidget {
  static const String namePath = '/quiz_page';
  final logic = Get.find<QuizLogic>();
  final state = Get.find<QuizLogic>().state;
  QuizUi({super.key});

  @override
  Widget build(BuildContext context) {
    Widget tabItem({
      required String title,
      required bool active,
      required int index,
    }) {
      return Expanded(
        child: GestureDetector(
          onTap: () => state.activeTab.value = index,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
              color: active ? kMainColor : kWhiteGreyColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              title,
              style: mainTextStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
                color: active ? kWhiteColor : kMainColor,
              ),
            ),
          ),
        ),
      );
    }

    Widget childItem({required QuizModel quiz}) {
      return GestureDetector(
        onTap: () => Get.toNamed(QuizListUi.namePath),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: defaultBoxShadow,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                quiz.title,
                style: mainTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: bold,
                ),
              ),
              const SizedBox(height: 10),
              LinearProgressIndicator(
                value: (quiz.done / quiz.total),
                color: kMainColor,
                minHeight: 10,
                borderRadius: BorderRadius.circular(10),
                backgroundColor: kWhiteGreyColor,
              ),
              const SizedBox(height: 2),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  '${quiz.done}/${quiz.total}',
                  style: mainTextStyle.copyWith(fontWeight: bold),
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        title: Text(
          'Quiz Tests',
          style: mainTextStyle.copyWith(fontSize: 22, fontWeight: bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Obx(
                () => Row(
                  spacing: 5,
                  children: [
                    tabItem(
                      title: 'Paper 1',
                      active: state.activeTab.value == 0,
                      index: 0,
                    ),
                    tabItem(
                      title: 'Paper 2',
                      active: state.activeTab.value == 1,
                      index: 1,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kMainColor,
              ),
              child: Column(
                children: state.paperOneQuiz
                    .map((data) => childItem(quiz: data))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
