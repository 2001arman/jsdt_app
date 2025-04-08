import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/boarding/boarding_ui.dart';

class AppRoute {
  static String initialRoute = BoardingUi.namePath;
  static final routes = [
    GetPage(
      name: BoardingUi.namePath,
      page: () => const BoardingUi(),
    ),
  ];
}
