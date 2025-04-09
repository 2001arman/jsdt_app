import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/auth/auth_logic.dart';
import 'package:jsdt_app/feature/presentation/home/home_ui.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';
import 'package:jsdt_app/utility/shared/widgets/custom_text_form_field.dart';
import 'package:jsdt_app/utility/shared/widgets/main_button.dart';

class AuthUi extends StatelessWidget {
  static const String namePath = '/auth_page';
  final logic = Get.find<AuthLogic>();
  final state = Get.find<AuthLogic>().state;
  AuthUi({super.key});

  @override
  Widget build(BuildContext context) {
    Widget checkboxContainer({
      required String title,
      required List<String> menus,
    }) {
      return Expanded(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: defaultBoxShadow,
            color: kWhiteColor,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: kMainColor,
                  ),
                  child: Text(
                    title,
                    style:
                        whiteTextStyle.copyWith(fontSize: 16, fontWeight: bold),
                  ),
                ),
                const SizedBox(height: 4),
                ...menus.map(
                  (data) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CheckboxMenuButton(
                      value: true,
                      onChanged: (f) {},
                      child: Text(
                        data,
                        style: mainTextStyle.copyWith(
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 4),
              ],
            ),
          ),
        ),
      );
    }

    Widget othersInput({
      required String title,
      required List<String> values,
    }) {
      return Column(
        children: [
          Row(
            children: [
              Text(
                title,
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
              Text(
                ' *',
                style: redTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
            margin: const EdgeInsets.only(bottom: 20, top: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: defaultBoxShadow,
              color: kWhiteColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: values
                  .map(
                    (data) => CheckboxMenuButton(
                      value: true,
                      onChanged: (f) {},
                      child: Text(
                        data,
                        style: mainTextStyle,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Text(
              'Educator',
              style: mainTextStyle.copyWith(fontSize: 32, fontWeight: bold),
            ),
            const SizedBox(height: 6),
            Text(
              'Please fill out the following form',
              style: mainTextStyle.copyWith(fontSize: 16),
            ),
            const SizedBox(height: 20),
            CustomTextFormField(
              controller: TextEditingController(),
              title: 'Name:',
              required: true,
            ),
            CustomTextFormField(
              controller: TextEditingController(),
              title: 'Surname:',
              required: true,
            ),
            Row(
              spacing: 8,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                checkboxContainer(
                    title: 'Get. Subject(s)', menus: state.getSubjects),
                checkboxContainer(
                  title: 'FET Subject(s)',
                  menus: state.fetSubjects,
                ),
              ],
            ),
            const SizedBox(height: 8),
            othersInput(
              title: 'Gender:',
              values: [
                'Male',
                'Female',
                'Prefer not to say',
              ],
            ),
            othersInput(
              title: 'Age:',
              values: [
                '<35',
                '35 - 50',
                '>50',
              ],
            ),
            CustomTextFormField(
              controller: TextEditingController(),
              title: 'School:',
              required: true,
            ),
            MainButton(
              title: 'Save',
              onTap: () => Get.toNamed(HomeUi.namePath),
            ),
          ],
        ),
      ),
    );
  }
}
