import 'package:basic_architecture_setup/data/repository/access_token_repository.dart';

class GetAccessTokenUseCase {
  GetAccessTokenUseCase(this._accessTokenRepository);

  final AccessTokenRepository _accessTokenRepository;

  Future<String> execute() {
    return _accessTokenRepository.getAccessToken();
  }
}
