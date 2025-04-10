import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/quiz/quiz_logic.dart';

class QuizBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuizLogic());
  }
}
