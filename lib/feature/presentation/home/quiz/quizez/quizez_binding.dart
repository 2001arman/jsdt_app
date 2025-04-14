import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/quiz/quizez/quizez_logic.dart';

class QuizezBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuizezLogic());
  }
}
