import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/quiz/quiz_result/quiz_result_ui.dart';
import 'package:jsdt_app/feature/presentation/home/quiz/quizez/quizez_logic.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';
import 'package:jsdt_app/utility/shared/widgets/ads_banner.dart';

class QuizezUi extends StatelessWidget {
  static const String namePath = '/quizez_page';
  final logic = Get.find<QuizezLogic>();
  final state = Get.find<QuizezLogic>().state;
  QuizezUi({super.key});

  @override
  Widget build(BuildContext context) {
    Widget button({
      required Widget child,
      required VoidCallback onTap,
    }) {
      return GestureDetector(
        onTap: onTap,
        child: Container(
          width: 115,
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: kMainColor,
            boxShadow: defaultBoxShadow,
          ),
          child: child,
        ),
      );
    }

    Widget answerItem({
      required String title,
    }) {
      return GestureDetector(
        onTap: () => state.selectedAnswer.value = title,
        child: Obx(
          () => Container(
            margin: const EdgeInsets.only(top: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 2,
                color: state.selectedAnswer.value == title
                    ? kMainColor
                    : kGreySecondColor,
              ),
              color: state.selectedAnswer.value == title
                  ? kMainColor.withValues(alpha: 0.5)
                  : kWhiteColor,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: mainTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                      color: state.selectedAnswer.value == title
                          ? kMainColor
                          : kGreySecondColor,
                    ),
                  ),
                ),
                state.selectedAnswer.value == title
                    ? Image.asset(
                        'assets/icons/checked.png',
                        width: 20,
                      )
                    : Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 2, color: kGreySecondColor),
                        ),
                      ),
              ],
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      'Test 1',
                      style: mainTextStyle.copyWith(
                          fontSize: 20, fontWeight: bold),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.only(top: 30),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kWhiteColor,
                        boxShadow: defaultBoxShadow,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Question: 1/20',
                                style: greyTextStyle.copyWith(
                                    fontSize: 16, fontWeight: semiBold),
                              ),
                              Image.asset(
                                'assets/icons/leave.png',
                                width: 20,
                              )
                            ],
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Angle from centre is two times the angle at the . . . . . . . . ',
                            style: mainTextStyle.copyWith(
                                fontSize: 16, fontWeight: bold),
                          ),
                          ...state.answers.map(
                            (data) => answerItem(title: data),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              button(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.keyboard_arrow_left,
                                      color: kWhiteColor,
                                    ),
                                    const SizedBox(width: 6),
                                    Text(
                                      'Previous',
                                      style: whiteTextStyle.copyWith(
                                          fontWeight: bold),
                                    )
                                  ],
                                ),
                                onTap: () {},
                              ),
                              button(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Next',
                                      style: whiteTextStyle.copyWith(
                                          fontWeight: bold),
                                    ),
                                    const SizedBox(width: 6),
                                    Icon(
                                      Icons.keyboard_arrow_right,
                                      color: kWhiteColor,
                                    ),
                                  ],
                                ),
                                onTap: () => Get.toNamed(QuizResultUi.namePath),
                              ),
                            ],
                          )
                        ],
                      ),
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
