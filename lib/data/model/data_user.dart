import 'package:json_annotation/json_annotation.dart';

part 'data_user.g.dart';

@JsonSerializable()
class DataUser {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'email')
  String email;

  @JsonKey(name: 'gender')
  String gender;

  @JsonKey(name: 'status')
  String status;

  @JsonKey(name: 'created_at')
  String createdAt;

  @JsonKey(name: 'updated_at')
  String updatedAt;

  DataUser({
    this.id,
    this.name,
    this.email,
    this.gender,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory DataUser.fromJson(Map<String, dynamic> json) =>
      _$DataUserFromJson(json);

  Map<String, dynamic> toJson() => _$DataUserToJson(this);
}
