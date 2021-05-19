// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _UserApi implements UserApi {
  _UserApi(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://gorest.co.in/public-api/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<HttpResponse<DataResponse<List<DataUser>>>> getUsers() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('users',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = DataResponse<List<DataUser>>.fromJson(
        _result.data,
        (json) => (json as List<dynamic>)
            .map<DataUser>((i) => DataUser.fromJson(i as Map<String, dynamic>))
            .toList());
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  @override
  Future<AccessToken> getAccessToken() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('token',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = AccessToken.fromJson(_result.data);
    return value;
  }
}
