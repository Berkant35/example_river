



import 'package:json_annotation/json_annotation.dart';

part 'custom_user.g.dart';


@JsonSerializable()
class CustomUser{
  final String? email;
  final String? name;
  final bool? gender;
  final int? age;

  CustomUser({
    this.email,
    this.name,
    this.gender,
    this.age});


  factory CustomUser.fromJson(Map<String, dynamic>? json) {
    return _$CustomUserFromJson(json!);
  }

  Map<String, dynamic> toJson() {
    return _$CustomUserToJson(this);
  }

}