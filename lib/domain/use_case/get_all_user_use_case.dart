import 'package:basic_architecture_setup/data/repository/user_repository.dart';
import 'package:basic_architecture_setup/domain/model/user.dart';

class GetAllUserUseCase {
  GetAllUserUseCase(this._userRepository);

  final UserRepository _userRepository;

  Future<List<User>> execute() {
    return _userRepository.getAllUsers();
  }
}
