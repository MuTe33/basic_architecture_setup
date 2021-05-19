// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataResponse<T> _$DataResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object json) fromJsonT,
) {
  return DataResponse<T>(
    json['meta'] as Map<String, dynamic>,
    fromJsonT(json['data']),
  );
}

Map<String, dynamic> _$DataResponseToJson<T>(
  DataResponse<T> instance,
  Object Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': toJsonT(instance.data),
    };
