import 'package:freezed_annotation/freezed_annotation.dart';

part 'dio_exceptions.freezed.dart';

class DioExceptionCode {
  DioExceptionCode._();

  static const internalError = 500;
  static const authenticationError = 400;
}

@freezed
abstract class DioException with _$DioException {
  factory DioException({String message}) = _DioException;

  factory DioException.socketException() {
    return DioException(
      message:
          'Request did not reach server. Please try again later and check your internet',
    );
  }

  factory DioException.createFromDioError(int code) {
    switch (code) {
      case DioExceptionCode.internalError:
        return DioException(message: 'Server has an error. Try again later');
      case DioExceptionCode.authenticationError:
        return DioException(message: 'User is not authenticated');
      default:
        return DioException(message: 'Generic Error: Something went wrong');
    }
  }
}
