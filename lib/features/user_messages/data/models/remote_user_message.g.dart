// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_user_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RemoteUserMessageImpl _$$RemoteUserMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$RemoteUserMessageImpl(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      emailId: json['emailId'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$RemoteUserMessageImplToJson(
        _$RemoteUserMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'emailId': instance.emailId,
      'message': instance.message,
    };
