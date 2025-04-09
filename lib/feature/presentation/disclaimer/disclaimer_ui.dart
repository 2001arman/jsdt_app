import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';

class DisclaimerUi extends StatelessWidget {
  const DisclaimerUi({super.key, this.onTapAgreed});
  final VoidCallback? onTapAgreed;

  @override
  Widget build(BuildContext context) {
    Widget numberAndText({
      required int number,
      required String text,
    }) {
      return Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            Text(
              '$number.',
              style: mainTextStyle.copyWith(fontSize: 16),
            ),
            Expanded(
              child: Text(
                text,
                style: mainTextStyle.copyWith(fontSize: 16),
              ),
            ),
          ],
        ),
      );
    }

    Widget button({
      required String text,
      required VoidCallback onTap,
    }) {
      return GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 40),
          decoration: BoxDecoration(
            boxShadow: defaultBoxShadow,
            color: kWhiteGreyColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            text,
            style: mainTextStyle.copyWith(
              fontSize: 16,
              fontWeight: bold,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Disclaimer',
                  style: mainTextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 40),
              RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  text:
                      'This application provides access to past examination papers organized for educational purposes.',
                  style: mainTextStyle.copyWith(
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: ' Please note:',
                      style: mainTextStyle.copyWith(fontWeight: bold),
                    )
                  ],
                ),
              ),
              numberAndText(
                number: 1,
                text:
                    'The content in this application is publicly available material compiled to help learners prepare effectively.',
              ),
              numberAndText(
                number: 2,
                text:
                    'The app may display advertisements to support development and maintenance.',
              ),
              numberAndText(
                number: 3,
                text:
                    "By using this app, you agree to the terms of this disclaimer, including the app's usage of ads.",
              ),
              numberAndText(
                number: 4,
                text:
                    'The developers are not responsible for any inaccuracies in the content or external actions taken as a result of using this app.',
              ),
              const SizedBox(height: 20),
              Text(
                'Please read carefully before proceeding.',
                style: mainTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: bold,
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  button(
                    text: 'Decline',
                    onTap: Get.back,
                  ),
                  button(
                    text: 'I ACCEPT',
                    onTap: onTapAgreed ?? Get.back,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
