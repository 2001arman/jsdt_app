import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/quiz/quiz_list/quiz_list_logic.dart';

class QuizListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuizListLogic());
  }
}
