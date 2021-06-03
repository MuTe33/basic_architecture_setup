import 'package:basic_architecture_setup/app/base_view_model.dart';
import 'package:basic_architecture_setup/domain/model/user.dart';
import 'package:basic_architecture_setup/domain/use_case/get_all_user_use_case.dart';

class TestPageViewModel extends BaseViewModel {
  TestPageViewModel(this._getAllUserUseCase);

  final GetAllUserUseCase _getAllUserUseCase;

  List<User> allUsers;

  Future<void> loadUsers() async {
    setLoading();

    allUsers = await _getAllUserUseCase.execute();

    setIdle();
  }
}
