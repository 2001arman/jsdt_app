import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/notes/notes_logic.dart';

class NotesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotesLogic());
  }
}
