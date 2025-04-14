import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/auth/auth_binding.dart';
import 'package:jsdt_app/feature/presentation/auth/auth_ui.dart';
import 'package:jsdt_app/feature/presentation/boarding/boarding_ui.dart';
import 'package:jsdt_app/feature/presentation/home/activities/activies_binding.dart';
import 'package:jsdt_app/feature/presentation/home/activities/activities_detail/activities_detail_binding.dart';
import 'package:jsdt_app/feature/presentation/home/activities/activities_detail/activities_detail_ui.dart';
import 'package:jsdt_app/feature/presentation/home/activities/activities_ui.dart';
import 'package:jsdt_app/feature/presentation/home/exampler/exampler_binding.dart';
import 'package:jsdt_app/feature/presentation/home/exampler/exampler_ui.dart';
import 'package:jsdt_app/feature/presentation/home/home_binding.dart';
import 'package:jsdt_app/feature/presentation/home/home_ui.dart';
import 'package:jsdt_app/feature/presentation/home/ieb/ieb_binding.dart';
import 'package:jsdt_app/feature/presentation/home/ieb/ieb_detail/ieb_detail_binding.dart';
import 'package:jsdt_app/feature/presentation/home/ieb/ieb_detail/ieb_detail_ui.dart';
import 'package:jsdt_app/feature/presentation/home/ieb/ieb_ui.dart';
import 'package:jsdt_app/feature/presentation/home/june/june_binding.dart';
import 'package:jsdt_app/feature/presentation/home/june/june_detail/june_detail_binding.dart';
import 'package:jsdt_app/feature/presentation/home/june/june_detail/june_detail_ui.dart';
import 'package:jsdt_app/feature/presentation/home/june/june_ui.dart';
import 'package:jsdt_app/feature/presentation/home/march/march_binding.dart';
import 'package:jsdt_app/feature/presentation/home/march/march_kzn/march_kzn_binding.dart';
import 'package:jsdt_app/feature/presentation/home/march/march_kzn/march_kzn_ui.dart';
import 'package:jsdt_app/feature/presentation/home/march/march_ui.dart';
import 'package:jsdt_app/feature/presentation/home/notes/notes_binding.dart';
import 'package:jsdt_app/feature/presentation/home/notes/notes_detail/notes_detail_binding.dart';
import 'package:jsdt_app/feature/presentation/home/notes/notes_detail/notes_detail_ui.dart';
import 'package:jsdt_app/feature/presentation/home/notes/notes_ui.dart';
import 'package:jsdt_app/feature/presentation/home/november/november_binding.dart';
import 'package:jsdt_app/feature/presentation/home/november/november_ui.dart';
import 'package:jsdt_app/feature/presentation/home/practice/practice_binding.dart';
import 'package:jsdt_app/feature/presentation/home/practice/practice_ui.dart';
import 'package:jsdt_app/feature/presentation/home/preliminary/preliminary_binding.dart';
import 'package:jsdt_app/feature/presentation/home/preliminary/preliminary_ui.dart';
import 'package:jsdt_app/feature/presentation/home/quiz/quiz_binding.dart';
import 'package:jsdt_app/feature/presentation/home/quiz/quiz_list/quiz_list_binding.dart';
import 'package:jsdt_app/feature/presentation/home/quiz/quiz_list/quiz_list_ui.dart';
import 'package:jsdt_app/feature/presentation/home/quiz/quiz_result/quiz_result_binding.dart';
import 'package:jsdt_app/feature/presentation/home/quiz/quiz_result/quiz_result_ui.dart';
import 'package:jsdt_app/feature/presentation/home/quiz/quiz_ui.dart';
import 'package:jsdt_app/feature/presentation/home/quiz/quizez/quizez_binding.dart';
import 'package:jsdt_app/feature/presentation/home/quiz/quizez/quizez_ui.dart';

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
      name: IebDetailUi.namePath,
      page: () => IebDetailUi(),
      binding: IebDetailBinding(),
    ),
    GetPage(
      name: NotesUi.namePath,
      page: () => NotesUi(),
      binding: NotesBinding(),
    ),
    GetPage(
      name: NotesDetailUi.namePath,
      page: () => NotesDetailUi(),
      binding: NotesDetailBinding(),
    ),
    GetPage(
      name: QuizUi.namePath,
      page: () => QuizUi(),
      binding: QuizBinding(),
    ),
    GetPage(
      name: QuizListUi.namePath,
      page: () => QuizListUi(),
      binding: QuizListBinding(),
    ),
    GetPage(
      name: QuizezUi.namePath,
      page: () => QuizezUi(),
      binding: QuizezBinding(),
    ),
    GetPage(
      name: QuizResultUi.namePath,
      page: () => QuizResultUi(),
      binding: QuizResultBinding(),
    ),
    GetPage(
      name: ActivitiesUi.namePath,
      page: () => ActivitiesUi(),
      binding: ActiviesBinding(),
    ),
    GetPage(
      name: ActivitiesDetailUi.namePath,
      page: () => ActivitiesDetailUi(),
      binding: ActivitiesDetailBinding(),
    ),
    GetPage(
      name: MarchUi.namePath,
      page: () => MarchUi(),
      binding: MarchBinding(),
    ),
    GetPage(
      name: MarchKznUi.namePath,
      page: () => MarchKznUi(),
      binding: MarchKznBinding(),
    ),
    GetPage(
      name: JuneUi.namePath,
      page: () => JuneUi(),
      binding: JuneBinding(),
    ),
    GetPage(
      name: JuneDetailUi.namePath,
      page: () => JuneDetailUi(),
      binding: JuneDetailBinding(),
    ),
    GetPage(
      name: PreliminaryUi.namePath,
      page: () => PreliminaryUi(),
      binding: PreliminaryBinding(),
    ),
    GetPage(
      name: NovemberUi.namePath,
      page: () => NovemberUi(),
      binding: NovemberBinding(),
    ),
    GetPage(
      name: PracticeUi.namePath,
      page: () => PracticeUi(),
      binding: PracticeBinding(),
    ),
    GetPage(
      name: ExamplerUi.namePath,
      page: () => ExamplerUi(),
      binding: ExamplerBinding(),
    ),
  ];
}
