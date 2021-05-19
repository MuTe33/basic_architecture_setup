import 'package:basic_architecture_setup/api/user/user_api.dart';
import 'package:basic_architecture_setup/data/mapper/user_mapper.dart';
import 'package:basic_architecture_setup/data/repository/base_repository.dart';
import 'package:basic_architecture_setup/domain/model/user.dart';

class UserRepository extends BaseRepository {
  UserRepository(this._userApi, this._userMapper);

  final UserApi _userApi;
  final UserMapper _userMapper;

  Future<List<User>> getAllUsers() async {
    try {
      final response = await _userApi.getUsers();

      final result = checkResponse(response);

      return _userMapper.map(result);
    } catch (e) {
      throw mapException(e);
    }
  }
}
