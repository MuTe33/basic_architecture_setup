import 'dart:io';

import 'package:basic_architecture_setup/domain/use_case/get_access_token_use_case.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

// Every api call needs an authentication, this intercepts every call and adds
// the auth header
class AuthInterceptor extends Interceptor {
  AuthInterceptor(this._getAccessTokenUseCase);

  final GetAccessTokenUseCase _getAccessTokenUseCase;

  @override
  Future onRequest(RequestOptions options) async {
    if (options.path != 'token') {
      debugPrint('AuthInterceptor: Getting AccessToken');

      String accessToken = await _getAccessTokenUseCase.execute();

      final auth = 'Bearer ' + accessToken;
      options.headers[HttpHeaders.authorizationHeader] = auth;
    }
  }
}
