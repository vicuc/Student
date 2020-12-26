import 'package:Student/models/baihoc.dart';
import 'package:Student/repositories/repository.dart';

class BaiGiangService {
  Repository _repository;

  BaiGiangService() {
    _repository = Repository();
  }
  // Create data
  // saveBaiGiang(BaiGiang baigiang) async {
  //   return await _repository.insertData('baigiang', baigiang.baigiangMap());
  // }

  // Read data from Table
  readBaiGiang() async {
    _repository.readData('baigiang');
  }
}
