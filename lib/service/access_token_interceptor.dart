import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

const _authorizationKeyProd = '<<<YouWouldNeedSomeApiKeyHere>>>';

class AccessTokenInterceptor extends Interceptor {
  @override
  Future onRequest(RequestOptions options) async {
    if (options.path == 'token') {
      debugPrint('AccessTokenInterceptor: Fetch Access Token from Server');

      final auth = 'Basic ' + _authorizationKeyProd;
      options.headers[HttpHeaders.authorizationHeader] = auth;
    }
  }
}
