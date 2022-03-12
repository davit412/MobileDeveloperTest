import 'package:mobile_developer_test/models/user_data.dart';

abstract class RegisterModels {
  Future<userDataResponse> register(userData data);
}
