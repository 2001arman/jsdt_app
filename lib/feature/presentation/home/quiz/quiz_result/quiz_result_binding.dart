import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/quiz/quiz_result/quiz_result_logic.dart';

class QuizResultBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuizResultLogic());
  }
}
