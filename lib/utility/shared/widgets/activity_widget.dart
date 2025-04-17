import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/feature/domain/activity/activity_model.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ActivityWidget extends StatefulWidget {
  final ActivityItem activityItem;
  const ActivityWidget({super.key, required this.activityItem});

  @override
  State<ActivityWidget> createState() => _ActivityWidgetState();
}

class _ActivityWidgetState extends State<ActivityWidget> {
  YoutubePlayerController? controller;

  @override
  void initState() {
    if (widget.activityItem.videoUrl != null) {
      controller = YoutubePlayerController(
        initialVideoId: widget.activityItem.videoUrl!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        ),
      );
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    RxBool answerActive = false.obs;
    RxBool videoActive = false.obs;

    Widget button({
      required String title,
      bool useMarginVertical = false,
      required RxBool isActive,
      required Widget child,
    }) {
      return Column(
        children: [
          GestureDetector(
            onTap: isActive.toggle,
            child: Container(
              padding: const EdgeInsets.all(15),
              margin: EdgeInsets.symmetric(
                  horizontal: 6, vertical: useMarginVertical ? 10 : 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: defaultBoxShadow,
                color: kWhiteGreyColor,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: mainTextStyle.copyWith(
                          fontSize: 16, fontWeight: bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Obx(
                    () => Icon(
                      isActive.value
                          ? Icons.keyboard_arrow_down
                          : Icons.keyboard_arrow_up,
                      color: kMainColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          child,
        ],
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 6),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: kMainColor),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              InteractiveViewer(
                child: Image.asset(widget.activityItem.questionImage),
              ),
              Row(
                spacing: 5,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: kMainColor,
                  ),
                  Image.asset(
                    'assets/icons/note.png',
                    width: 19,
                  ),
                ],
              )
            ],
          ),
          button(
            title: 'View Answers',
            useMarginVertical: true,
            isActive: answerActive,
            child: Obx(
              () => AnimatedSize(
                duration: const Duration(milliseconds: 200),
                child: Container(
                  margin: EdgeInsets.symmetric(
                      vertical: answerActive.value ? 12 : 0),
                  height: answerActive.value ? null : 0,
                  child: InteractiveViewer(
                    child: Image.asset(
                      widget.activityItem.answerImage,
                    ),
                  ),
                ),
              ),
            ),
          ),
          if (controller != null)
            button(
              title: 'Video Solutions',
              isActive: videoActive,
              child: Obx(
                () {
                  if (videoActive.value) {
                    controller!.reset();
                  } else {
                    controller!.pause();
                  }
                  return AnimatedSize(
                    duration: const Duration(milliseconds: 200),
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          vertical: videoActive.value ? 12 : 0),
                      height: videoActive.value ? null : 0,
                      child: YoutubePlayer(
                        controller: controller!,
                        showVideoProgressIndicator: true,
                        onReady: () {},
                      ),
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
