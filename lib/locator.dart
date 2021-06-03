import 'package:basic_architecture_setup/api/user/user_api.dart';
import 'package:basic_architecture_setup/data/mapper/user_mapper.dart';
import 'package:basic_architecture_setup/data/repository/access_token_repository.dart';
import 'package:basic_architecture_setup/data/repository/user_repository.dart';
import 'package:basic_architecture_setup/domain/use_case/get_access_token_use_case.dart';
import 'package:basic_architecture_setup/domain/use_case/get_all_user_use_case.dart';
import 'package:basic_architecture_setup/feature/testpage/test_page_view_model.dart';
import 'package:basic_architecture_setup/service/access_token_interceptor.dart';
import 'package:basic_architecture_setup/service/auth_interceptor.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

GetIt locator = GetIt.instance;
GetIt _l = locator;

void initSyncDependencies() {
  _initUtils();
  _initServices();
  _initApis();
  _initMappers();
  _initRepositories();
  _initViewModels();
  _initUseCases();
}

Future<void> initAsyncDependencies() async {
  await _initNetworking();
}

void _initUtils() {
  _l.registerLazySingleton(() => const FlutterSecureStorage());
}

void _initServices() {
  _l.registerLazySingleton(() => AccessTokenInterceptor());
  _l.registerLazySingleton(() => AuthInterceptor(_l.get()));
}

Future<void> _initNetworking() async {
  final dioInstance = dio.Dio();

  final AuthInterceptor authInterceptor = _l.get();
  dioInstance.interceptors.add(authInterceptor);

  final AccessTokenInterceptor accessTokenInterceptor = _l.get();
  dioInstance.interceptors.add(accessTokenInterceptor);

  dioInstance.interceptors.add(PrettyDioLogger(
    requestHeader: true,
    responseHeader: true,
    requestBody: true,
    responseBody: true,
    error: true,
    compact: true,
  ));

  _l.registerSingleton(dioInstance);
}

void _initApis() {
  _l.registerLazySingleton(() => UserApi(_l.get()));
}

void _initMappers() {
  _l.registerLazySingleton(() => UserMapper());
}

void _initRepositories() {
  _l.registerLazySingleton(() => UserRepository(_l.get(), _l.get()));
  _l.registerLazySingleton(() => AccessTokenRepository(_l.get(), _l.get()));
}

void _initViewModels() {
  _l.registerLazySingleton(() => TestPageViewModel(_l.get()));
}

void _initUseCases() {
  _l.registerLazySingleton(() => GetAllUserUseCase(_l.get()));
  _l.registerLazySingleton(() => GetAccessTokenUseCase(_l.get()));
}
