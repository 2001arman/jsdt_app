import 'package:cached_network_image/cached_network_image.dart';
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
                logic.notes.title,
                style: mainTextStyle.copyWith(fontSize: 22, fontWeight: bold),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  LayoutBuilder(
                    builder: (context, constraints) {
                      return InteractiveViewer(
                        panEnabled: true,
                        minScale: 0.1,
                        maxScale: 5.0,
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://drive.google.com/uc?export=view&id=${logic.notes.linkUrl}',
                          filterQuality: FilterQuality.high,
                          placeholder: (context, url) => const Padding(
                            padding: EdgeInsets.all(20),
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          ),
                          imageBuilder: (context, imageProvider) {
                            return Image(
                              image: imageProvider,
                              fit: BoxFit.contain,
                              alignment: Alignment.topCenter,
                            );
                          },
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            const AdsBanner(),
          ],
        ),
      ),
    );
  }
}
