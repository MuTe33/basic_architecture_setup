import 'package:basic_architecture_setup/data/model/data_response.dart';
import 'package:basic_architecture_setup/data/model/dio_exceptions.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

abstract class BaseRepository {
  DioException mapException(DioError error) {
    if (error.response == null) throw DioException.socketException();

    return DioException.createFromDioError(error.response.statusCode);
  }

  T checkResponse<T>(HttpResponse<DataResponse<T>> response) {
    if (response.response.statusCode >= 400) {
      throw DioException.createFromDioError(response.response.statusCode);
    } else if (response.response.statusCode == 200 && response.data != null) {
      return response.data.data;
    } else {
      return null;
    }
  }
}
