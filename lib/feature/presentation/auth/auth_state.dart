import 'package:get/get.dart';
import 'package:jsdt_app/feature/domain/auth/auth_type.dart';

class AuthState {
  late AuthType authType;

  RxString selectedGender = 'Male'.obs;
  RxString selectedAge = ''.obs;

  List<String> getSubjects = [
    'Creative Arts',
    'EMS',
    'Languages',
    'S.S',
    'L.O',
    'Maths',
    'N.S',
    'Technology',
  ];
  List<String> fetSubjects = [
    'Accounting',
    'Agri. Sciences',
    'BSTD',
    'Economics',
    'Geography',
    'History',
    'Languages',
    'L.O',
    'Life Sciences',
    'MLIT',
    'Mathematics',
    'Phy. Sciences',
  ];
}
