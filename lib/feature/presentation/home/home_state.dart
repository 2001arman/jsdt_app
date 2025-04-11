// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:jsdt_app/feature/presentation/home/activities/activities_ui.dart';
import 'package:jsdt_app/feature/presentation/home/ieb/ieb_ui.dart';
import 'package:jsdt_app/feature/presentation/home/june/june_ui.dart';
import 'package:jsdt_app/feature/presentation/home/march/march_ui.dart';
import 'package:jsdt_app/feature/presentation/home/notes/notes_ui.dart';
import 'package:jsdt_app/feature/presentation/home/preliminary/preliminary_ui.dart';
import 'package:jsdt_app/feature/presentation/home/quiz/quiz_ui.dart';

class HomeState {
  List<HomeMenu> homeMenus = [
    HomeMenu(
      title: 'IEB',
      image: 'assets/home/IEB.png',
      path: IebUi.namePath,
    ),
    HomeMenu(
      title: 'Notes',
      image: 'assets/home/notes.png',
      path: NotesUi.namePath,
    ),
    HomeMenu(
      title: 'Quiz Tests',
      image: 'assets/home/quiz.png',
      path: QuizUi.namePath,
    ),
    HomeMenu(
      title: 'Activities',
      image: 'assets/home/activities.png',
      path: ActivitiesUi.namePath,
    ),
    HomeMenu(
      title: 'Practice Problems',
      image: 'assets/home/practice.png',
      path: IebUi.namePath,
    ),
    HomeMenu(
      title: 'March Tests',
      image: 'assets/home/march.png',
      path: MarchUi.namePath,
    ),
    HomeMenu(
      title: 'June Exams',
      image: 'assets/home/june.png',
      path: JuneUi.namePath,
    ),
    HomeMenu(
      title: 'Preliminary Exams',
      image: 'assets/home/preliminery.png',
      path: PreliminaryUi.namePath,
    ),
    HomeMenu(
      title: 'Examplers',
      image: 'assets/home/examplers.png',
      path: IebUi.namePath,
    ),
    HomeMenu(
      title: 'November Exams',
      image: 'assets/home/november.png',
      path: IebUi.namePath,
    ),
  ];
}

class HomeMenu {
  final String title;
  final String image;
  final String path;

  HomeMenu({
    required this.title,
    required this.image,
    required this.path,
  });
}
