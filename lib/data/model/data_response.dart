import 'package:json_annotation/json_annotation.dart';

part 'data_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class DataResponse<T> {
  @JsonKey(name: 'meta')
  Map<String, dynamic> meta;

  @JsonKey(name: 'data')
  T data;

  DataResponse(
    this.meta,
    this.data,
  );

  factory DataResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object json) fromJsonT,
  ) =>
      _$DataResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$DataResponseToJson(this, toJsonT);
}
