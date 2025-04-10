import 'package:get/get.dart';

class QuizState {
  RxInt activeTab = 0.obs;

  List<QuizModel> paperOneQuiz = [
    QuizModel(
      title: '1. Paper 2 Topic 1',
      total: 5,
      done: 1,
    ),
    QuizModel(
      title: '2. Paper 2 Topic 2',
      total: 5,
      done: 4,
    ),
    QuizModel(
      title: '3. Paper 3 Topic 3',
      total: 5,
      done: 2,
    ),
    QuizModel(
      title: '4. Paper 4 Topic 4',
      total: 5,
      done: 5,
    ),
    QuizModel(
      title: '5. Paper 5 Topic 5',
      total: 5,
      done: 0,
    ),
  ];
}

class QuizModel {
  final String title;
  final int total;
  final int done;

  QuizModel({required this.title, required this.total, required this.done});
}
