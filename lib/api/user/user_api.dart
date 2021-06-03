import 'package:basic_architecture_setup/data/model/access_token.dart';
import 'package:basic_architecture_setup/data/model/data_response.dart';
import 'package:basic_architecture_setup/data/model/data_user.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'user_api.g.dart';

// Using retrofit for api generation
@RestApi(baseUrl: 'https://gorest.co.in/public-api/')
abstract class UserApi {
  factory UserApi(Dio dio, {String baseUrl}) = _UserApi;

  @GET("users")
  Future<HttpResponse<DataResponse<List<DataUser>>>> getUsers();

  // usually you won't do access token handling here. You would rather create an own access_token_api file decicated to this
  // Nevertheless, for simplicity I made it here. Also, usually you don't need to handle access token client side.
  @GET("token")
  Future<AccessToken> getAccessToken();

  //DELETE

  //PUT

  //POST
}
