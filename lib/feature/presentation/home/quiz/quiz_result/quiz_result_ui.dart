import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/quiz/quiz_result/quiz_result_logic.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';
import 'package:jsdt_app/utility/shared/widgets/ads_banner.dart';

class QuizResultUi extends StatelessWidget {
  static const String namePath = '/quiz_result_page';
  final logic = Get.find<QuizResultLogic>();
  QuizResultUi({super.key});

  @override
  Widget build(BuildContext context) {
    Widget menuItem({
      required String title,
      required String icon,
    }) {
      return Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          child: Column(
            children: [
              Image.asset(
                icon,
                width: 30,
              ),
              const SizedBox(height: 14),
              Text(
                title,
                style: gretSecondTextStyle.copyWith(fontWeight: medium),
                textAlign: TextAlign.center,
              )
            ],
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
          const Spacer(),
          Text(
            'Result of Your Tests',
            style: mainTextStyle.copyWith(fontSize: 20, fontWeight: bold),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.all(30),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: kWhiteColor,
              boxShadow: defaultBoxShadow,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 200,
                        height: 200,
                        child: CircularProgressIndicator(
                          value: 0.95,
                          color: kMainColor,
                          backgroundColor: kWhiteGreyColor,
                          strokeWidth: 14,
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        height: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '95%',
                              style: mainTextStyle.copyWith(
                                fontWeight: bold,
                                fontSize: 48,
                              ),
                            ),
                            Text(
                              '19 out of 20',
                              style: greyTextStyle.copyWith(
                                fontWeight: bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: kGreyColor,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    menuItem(
                      title: 'Retry',
                      icon: 'assets/icons/retry.png',
                    ),
                    Container(
                      width: 1,
                      height: 80,
                      color: kGreyColor,
                    ),
                    menuItem(
                      title: 'Back to\nTests',
                      icon: 'assets/icons/back-test.png',
                    ),
                    Container(
                      width: 1,
                      height: 80,
                      color: kGreyColor,
                    ),
                    menuItem(
                      title: 'Review',
                      icon: 'assets/icons/review.png',
                    ),
                  ],
                )
              ],
            ),
          ),
          const Spacer(),
          const AdsBanner(),
        ],
      )),
    );
  }
}
