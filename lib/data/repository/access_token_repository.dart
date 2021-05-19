import 'package:basic_architecture_setup/api/user/user_api.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const _accessTokenKey = 'accessToken';

class AccessTokenRepository {
  AccessTokenRepository(
    this._userApi,
    this._secureStorage,
  );

  final FlutterSecureStorage _secureStorage;
  final UserApi _userApi;

  Future<String> _getAccessTokenFromServer() async {
    debugPrint('Repository: getAccessTokenFromServer');
    try {
      final response = await _userApi.getAccessToken();

      await _setAccessToken(response.accessToken, response.expiresIn);

      return response.accessToken;
    } catch (e) {
      throw ('Could not fetch Token from Server');
    }
  }

  Future<void> _setAccessToken(
    String accessToken,
    int expiresIn,
  ) async {
    debugPrint('Repository: setAccessToken');

    final now = DateTime.now();

    await _secureStorage.write(key: _accessTokenKey, value: accessToken);

    if (now.isAfter(now.add(Duration(seconds: expiresIn)))) {
      await _secureStorage.write(key: _accessTokenKey, value: null);
    }
  }

  Future<String> getAccessToken() async {
    debugPrint('Repository: getAccessToken');
    String token = await _secureStorage.read(key: _accessTokenKey);

    if (token == null) return await _getAccessTokenFromServer();

    return token;
  }
}
