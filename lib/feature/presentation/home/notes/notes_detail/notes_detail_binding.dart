import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/notes/notes_detail/notes_detail_logic.dart';

class NotesDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotesDetailLogic());
  }
}
