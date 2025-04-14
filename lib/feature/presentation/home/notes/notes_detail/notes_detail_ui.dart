import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/notes/notes_detail/notes_detail_logic.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';

import '../../../../../utility/shared/widgets/ads_banner.dart';

class NotesDetailUi extends StatelessWidget {
  static const String namePath = '/notes_detail_ui';
  final logic = Get.find<NotesDetailLogic>();
  NotesDetailUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: Column(
          children: [
            const AdsBanner(),
            AppBar(
              backgroundColor: kWhiteColor,
              surfaceTintColor: kWhiteColor,
              title: Text(
                'Paper 1 Topic 1',
                style: mainTextStyle.copyWith(fontSize: 22, fontWeight: bold),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Image.asset('assets/notes/notesalgebra.png'),
              ),
            ),
            const AdsBanner(),
          ],
        ),
      ),
    );
  }
}
