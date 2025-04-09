import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/auth/auth_binding.dart';
import 'package:jsdt_app/feature/presentation/auth/auth_ui.dart';
import 'package:jsdt_app/feature/presentation/boarding/boarding_ui.dart';
import 'package:jsdt_app/feature/presentation/home/home_binding.dart';
import 'package:jsdt_app/feature/presentation/home/home_ui.dart';

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
  ];
}
