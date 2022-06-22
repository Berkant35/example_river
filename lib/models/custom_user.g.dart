// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomUser _$CustomUserFromJson(Map<String, dynamic> json) => CustomUser(
      email: json['email'] as String?,
      name: json['name'] as String?,
      gender: json['gender'] as bool?,
      age: json['age'] as int?,
    );

Map<String, dynamic> _$CustomUserToJson(CustomUser instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'gender': instance.gender,
      'age': instance.age,
    };
