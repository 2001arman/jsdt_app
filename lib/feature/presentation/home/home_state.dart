import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/activities/activities_ui.dart';
import 'package:jsdt_app/feature/presentation/home/ieb/ieb_ui.dart';
import 'package:jsdt_app/feature/presentation/home/june/june_detail/june_detail_ui.dart';
import 'package:jsdt_app/feature/presentation/home/june/june_ui.dart';
import 'package:jsdt_app/feature/presentation/home/march/march_ui.dart';
import 'package:jsdt_app/feature/presentation/home/notes/notes_ui.dart';
import 'package:jsdt_app/feature/presentation/home/november/november_ui.dart';
import 'package:jsdt_app/feature/presentation/home/practice/practice_ui.dart';
import 'package:jsdt_app/feature/presentation/home/preliminary/preliminary_ui.dart';
import 'package:jsdt_app/feature/presentation/home/quiz/quiz_ui.dart';

class HomeState {
  List<Rx<HomeMenu>> homeMenus = [
    HomeMenu(
      title: 'IEB',
      image: 'assets/home/IEB.png',
      path: IebUi.namePath,
    ).obs,
    HomeMenu(
      title: 'Notes',
      image: 'assets/home/notes.png',
      path: NotesUi.namePath,
    ).obs,
    HomeMenu(
      title: 'Quiz Tests',
      image: 'assets/home/quiz.png',
      path: QuizUi.namePath,
    ).obs,
    HomeMenu(
      title: 'Activities',
      image: 'assets/home/activities.png',
      path: ActivitiesUi.namePath,
    ).obs,
    HomeMenu(
      title: 'Practice Problems',
      image: 'assets/home/practice.png',
      path: PracticeUi.namePath,
    ).obs,
    HomeMenu(
      title: 'March Tests',
      image: 'assets/home/march.png',
      path: MarchUi.namePath,
    ).obs,
    HomeMenu(
      title: 'June Exams',
      image: 'assets/home/june.png',
      path: JuneUi.namePath,
    ).obs,
    HomeMenu(
      title: 'Preliminary Exams',
      image: 'assets/home/preliminery.png',
      path: PreliminaryUi.namePath,
    ).obs,
    HomeMenu(
      title: 'Examplers',
      image: 'assets/home/examplers.png',
      path: JuneDetailUi.namePath,
    ).obs,
    HomeMenu(
      title: 'November Exams',
      image: 'assets/home/november.png',
      path: NovemberUi.namePath,
    ).obs,
  ];
}

class HomeMenu {
  final String title;
  final String image;
  final String path;
  final dynamic argument;

  HomeMenu({
    required this.title,
    required this.image,
    required this.path,
    this.argument,
  });

  HomeMenu copyWith({
    String? title,
    String? image,
    String? path,
    dynamic argument,
  }) {
    return HomeMenu(
      title: title ?? this.title,
      image: image ?? this.image,
      path: path ?? this.path,
      argument: argument ?? this.argument,
    );
  }
}
