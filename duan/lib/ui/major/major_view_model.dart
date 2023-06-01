// import 'package:flutter_demo_15/dao/major_dao.dart';
import 'package:flutter_demo_15/utils/app_variables.dart';
import 'package:scoped_model/scoped_model.dart';
import '/model/major.dart';

class MajorViewModel extends Model {
  static final MajorViewModel _instance = MajorViewModel._internal();
  factory MajorViewModel() => _instance;
  // MajorDao _repo = MajorDao();
  List<Major> majors = [];

  MajorViewModel._internal() {
    updateList();
  }
  void updateList() async {
    final results = await AppVariables.api.getMajors();
    majors = results.data ?? [];
    notifyListeners();
  }

  void save(Major major) async {
    major.id == 0
        ? await AppVariables.api.addMajors(major)
        : await AppVariables.api.updateMajor(major.id, major);
    updateList();
  }

  void delete(Major major) async {
    await AppVariables.api.deleteMajor(major.id);
    updateList();
  }
}
