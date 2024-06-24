// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_user_message.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocalUserMessageImplAdapter extends TypeAdapter<_$LocalUserMessageImpl> {
  @override
  final int typeId = 1;

  @override
  _$LocalUserMessageImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$LocalUserMessageImpl(
      id: fields[1] as String,
      firstName: fields[2] as String,
      lastName: fields[3] as String,
      emailId: fields[4] as String,
      message: fields[5] as String,
      isPublished: fields[6] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, _$LocalUserMessageImpl obj) {
    writer
      ..writeByte(6)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.firstName)
      ..writeByte(3)
      ..write(obj.lastName)
      ..writeByte(4)
      ..write(obj.emailId)
      ..writeByte(5)
      ..write(obj.message)
      ..writeByte(6)
      ..write(obj.isPublished);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalUserMessageImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalUserMessageImpl _$$LocalUserMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$LocalUserMessageImpl(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      emailId: json['emailId'] as String,
      message: json['message'] as String,
      isPublished: json['isPublished'] as bool,
    );

Map<String, dynamic> _$$LocalUserMessageImplToJson(
        _$LocalUserMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'emailId': instance.emailId,
      'message': instance.message,
      'isPublished': instance.isPublished,
    };
