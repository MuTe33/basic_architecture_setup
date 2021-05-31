import 'package:basic_architecture_setup/data/model/data_response.dart';
import 'package:basic_architecture_setup/data/model/dio_exceptions.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

abstract class BaseRepository {
  DioException mapException(DioError error) {
    if (error.response == null) throw DioException.socketException();

    return DioException.createFromDioError(error.response.statusCode);
  }

  T checkResponse<T>(HttpResponse<DataResponse<T>> httpResponse) {
    if (httpResponse.response.statusCode >= 400) {
      throw DioException.createFromDioError(httpResponse.response.statusCode);
    } else if (httpResponse.response.statusCode == 200 &&
        httpResponse.data != null) {
      return httpResponse.data.data;
    } else {
      return null;
    }
  }
}
