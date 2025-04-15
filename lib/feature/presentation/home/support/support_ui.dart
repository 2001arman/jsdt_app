import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/support/support_logic.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';

class SupportUi extends StatelessWidget {
  static const String namePath = '/support_page';
  final logic = Get.find<SupportLogic>();
  SupportUi({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buttonContainer({
      required String title,
      required String value,
      required Color color,
    }) {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 15),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kWhiteColor,
          boxShadow: defaultBoxShadow,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: RichText(
                text: TextSpan(
                  text: title,
                  style: blackTextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: bold,
                  ),
                  children: [
                    TextSpan(
                      text: '\nCoupon',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 1,
              height: 70,
              color: kBlackColor,
            ),
            Expanded(
              child: Text(
                'R$value',
                textAlign: TextAlign.center,
                style: blackTextStyle.copyWith(
                  fontSize: 32,
                  fontWeight: bold,
                ),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: kMainColor.withValues(alpha: 0.5),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      appBar: AppBar(
        backgroundColor: kWhiteGreyColor,
        title: Text(
          'Support Us',
          style: mainTextStyle.copyWith(fontSize: 22, fontWeight: bold),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            '🌞 Good Morning, [#user]!',
            style: mainTextStyle.copyWith(fontSize: 16, fontWeight: bold),
          ),
          const SizedBox(height: 20),
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              text: 'Become a Bronze, Silver, or Gold JSDT Member! ',
              style: goldTextStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
                height: 20 / 16,
              ),
              children: [
                TextSpan(
                  text:
                      'JSDT Solutions has been at the forefront of designing free educational apps since 2016, empowering high school learners across the country. By purchasing a Bronze, Silver, or Gold coupon, you can directly support our mission to enhance the educational landscape. Your contribution will help us continue creating innovative, free resources that make a real difference. We proudly dedicate 10% of our proceeds to purchasing textbooks for the Read is Our Leaders movement, empowering the next generation of leaders through education. ',
                  style: mainTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Text(
            'Join us in shaping a brighter future for students-every contribution counts!',
            style: mainTextStyle.copyWith(fontSize: 16, fontWeight: bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          buttonContainer(
            title: 'Bronze',
            value: '9,99',
            color: kBronzeColor,
          ),
          buttonContainer(
            title: 'Silver',
            value: '19,99',
            color: kSilverColor,
          ),
          buttonContainer(
            title: 'Gold',
            value: '29,99',
            color: kGoldColor,
          ),
          const SizedBox(height: 10),
          Text(
            'Thank you for your support!',
            textAlign: TextAlign.center,
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Share your coupon status:',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: bold,
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/icons/facebook.png',
                    width: 40,
                  ),
                  Text(
                    'Facebook',
                    style: blackTextStyle.copyWith(
                        fontSize: 12, fontWeight: medium),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/icons/tiktok.png',
                    width: 40,
                  ),
                  Text(
                    'Tiktok',
                    style: blackTextStyle.copyWith(
                        fontSize: 12, fontWeight: medium),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
