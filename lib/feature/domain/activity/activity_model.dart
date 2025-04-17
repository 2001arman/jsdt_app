class ActivityModel {
  final String title;
  final List<ActivityItem> items;

  ActivityModel({required this.title, required this.items});
}

class ActivityItem {
  final String qustionImage;
  final String answerImage;
  final String? videoUrl;

  ActivityItem({
    required this.qustionImage,
    required this.answerImage,
    this.videoUrl,
  });
}
