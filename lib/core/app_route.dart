import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/auth/auth_binding.dart';
import 'package:jsdt_app/feature/presentation/auth/auth_ui.dart';
import 'package:jsdt_app/feature/presentation/boarding/boarding_ui.dart';
import 'package:jsdt_app/feature/presentation/home/activities/activies_binding.dart';
import 'package:jsdt_app/feature/presentation/home/activities/activities_ui.dart';
import 'package:jsdt_app/feature/presentation/home/home_binding.dart';
import 'package:jsdt_app/feature/presentation/home/home_ui.dart';
import 'package:jsdt_app/feature/presentation/home/ieb/ieb_binding.dart';
import 'package:jsdt_app/feature/presentation/home/ieb/ieb_ui.dart';
import 'package:jsdt_app/feature/presentation/home/june/june_binding.dart';
import 'package:jsdt_app/feature/presentation/home/june/june_ui.dart';
import 'package:jsdt_app/feature/presentation/home/march/march_binding.dart';
import 'package:jsdt_app/feature/presentation/home/march/march_ui.dart';
import 'package:jsdt_app/feature/presentation/home/notes/notes_binding.dart';
import 'package:jsdt_app/feature/presentation/home/notes/notes_ui.dart';
import 'package:jsdt_app/feature/presentation/home/quiz/quiz_binding.dart';
import 'package:jsdt_app/feature/presentation/home/quiz/quiz_ui.dart';

class AppRoute {
  static String initialRoute = BoardingUi.namePath;
  static final routes = [
    GetPage(
      name: BoardingUi.namePath,
      page: () => const BoardingUi(),
    ),
    GetPage(
      name: AuthUi.namePath,
      page: () => AuthUi(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: HomeUi.namePath,
      page: () => HomeUi(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: IebUi.namePath,
      page: () => IebUi(),
      binding: IebBinding(),
    ),
    GetPage(
      name: NotesUi.namePath,
      page: () => NotesUi(),
      binding: NotesBinding(),
    ),
    GetPage(
      name: QuizUi.namePath,
      page: () => QuizUi(),
      binding: QuizBinding(),
    ),
    GetPage(
      name: ActivitiesUi.namePath,
      page: () => ActivitiesUi(),
      binding: ActiviesBinding(),
    ),
    GetPage(
      name: MarchUi.namePath,
      page: () => MarchUi(),
      binding: MarchBinding(),
    ),
    GetPage(
      name: JuneUi.namePath,
      page: () => JuneUi(),
      binding: JuneBinding(),
    ),
  ];
}
