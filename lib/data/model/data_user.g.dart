// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataUser _$DataUserFromJson(Map<String, dynamic> json) {
  return DataUser(
    id: json['id'] as int,
    name: json['name'] as String,
    email: json['email'] as String,
    gender: json['gender'] as String,
    status: json['status'] as String,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
  );
}

Map<String, dynamic> _$DataUserToJson(DataUser instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'gender': instance.gender,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
