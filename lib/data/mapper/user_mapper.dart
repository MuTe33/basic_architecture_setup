import 'package:basic_architecture_setup/data/model/data_user.dart';
import 'package:basic_architecture_setup/domain/model/user.dart';

class UserMapper {
  List<User> map(List<DataUser> from) {
    if (from == null) return null;

    return from.map(
      (user) {
        return User(
          id: user.id,
          name: user.name,
          email: user.email,
          gender: user.gender,
          status: user.status,
          createdAt: user.createdAt,
          updatedAt: user.updatedAt,
        );
      },
    ).toList();
  }
}
