import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/notes/notes_state.dart';

class NotesDetailLogic extends GetxController {
  late NotesItem notes;

  @override
  void onInit() {
    notes = Get.arguments;
    super.onInit();
  }
}
