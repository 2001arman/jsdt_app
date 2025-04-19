import 'package:jsdt_app/feature/domain/activity/activity_model.dart';

List<JuneModel> juneModelListFromJson(List<dynamic> jsonList) {
  return jsonList.map((json) => JuneModel.fromJson(json)).toList();
}

class JuneModel {
  final String title;
  final List<ActivityModel> activities;

  JuneModel({required this.title, required this.activities});

  factory JuneModel.fromJson(Map<String, dynamic> json) {
    return JuneModel(
      title: json['title'],
      activities: (json['activities'] as List)
          .map((item) => ActivityModel.fromJson(item))
          .toList(),
    );
  }

  JuneModel copyWith({
    String? title,
    List<ActivityItem>? items,
  }) {
    return JuneModel(
      title: title ?? this.title,
      activities: activities,
    );
  }
}
