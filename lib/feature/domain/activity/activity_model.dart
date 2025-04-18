List<ActivityModel> activityModelListFromJson(List<dynamic> jsonList) {
  return jsonList.map((json) => ActivityModel.fromJson(json)).toList();
}

class ActivityModel {
  final String title;
  final List<ActivityItem> items;

  ActivityModel({required this.title, required this.items});

  factory ActivityModel.fromJson(Map<String, dynamic> json) {
    return ActivityModel(
      title: json['title'],
      items: (json['items'] as List)
          .map((item) => ActivityItem.fromJson(item))
          .toList(),
    );
  }

  ActivityModel copyWith({
    String? title,
    List<ActivityItem>? items,
  }) {
    return ActivityModel(
      title: title ?? this.title,
      items: items ?? this.items,
    );
  }
}

class ActivityItem {
  final String questionImage;
  final String answerImage;
  final String? videoUrl;

  ActivityItem({
    required this.questionImage,
    required this.answerImage,
    this.videoUrl,
  });

  factory ActivityItem.fromJson(Map<String, dynamic> json) {
    return ActivityItem(
      questionImage: json['questionImage'],
      answerImage: json['answerImage'],
      videoUrl: json['videoUrl'],
    );
  }

  ActivityItem copyWith({
    String? questionImage,
    String? answerImage,
    String? videoUrl,
  }) {
    return ActivityItem(
      questionImage: questionImage ?? this.questionImage,
      answerImage: answerImage ?? this.answerImage,
      videoUrl: videoUrl ?? this.videoUrl,
    );
  }
}
