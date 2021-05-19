import 'package:basic_architecture_setup/data/model/access_token.dart';
import 'package:basic_architecture_setup/data/model/data_response.dart';
import 'package:basic_architecture_setup/data/model/data_user.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'user_api.g.dart';

@RestApi(baseUrl: 'https://gorest.co.in/public-api/')
abstract class UserApi {
  factory UserApi(Dio dio, {String baseUrl}) = _UserApi;

  @GET("users")
  Future<HttpResponse<DataResponse<List<DataUser>>>> getUsers();

  @GET("token")
  Future<AccessToken> getAccessToken();

  //DELETE

  //PUT

  //POST
}
