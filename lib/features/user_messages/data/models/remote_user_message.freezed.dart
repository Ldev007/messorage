// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_user_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RemoteUserMessage _$RemoteUserMessageFromJson(Map<String, dynamic> json) {
  return _RemoteUserMessage.fromJson(json);
}

/// @nodoc
mixin _$RemoteUserMessage {
  String get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get emailId => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoteUserMessageCopyWith<RemoteUserMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteUserMessageCopyWith<$Res> {
  factory $RemoteUserMessageCopyWith(
          RemoteUserMessage value, $Res Function(RemoteUserMessage) then) =
      _$RemoteUserMessageCopyWithImpl<$Res, RemoteUserMessage>;
  @useResult
  $Res call(
      {String id,
      String firstName,
      String lastName,
      String emailId,
      String message});
}

/// @nodoc
class _$RemoteUserMessageCopyWithImpl<$Res, $Val extends RemoteUserMessage>
    implements $RemoteUserMessageCopyWith<$Res> {
  _$RemoteUserMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? emailId = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      emailId: null == emailId
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoteUserMessageImplCopyWith<$Res>
    implements $RemoteUserMessageCopyWith<$Res> {
  factory _$$RemoteUserMessageImplCopyWith(_$RemoteUserMessageImpl value,
          $Res Function(_$RemoteUserMessageImpl) then) =
      __$$RemoteUserMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String firstName,
      String lastName,
      String emailId,
      String message});
}

/// @nodoc
class __$$RemoteUserMessageImplCopyWithImpl<$Res>
    extends _$RemoteUserMessageCopyWithImpl<$Res, _$RemoteUserMessageImpl>
    implements _$$RemoteUserMessageImplCopyWith<$Res> {
  __$$RemoteUserMessageImplCopyWithImpl(_$RemoteUserMessageImpl _value,
      $Res Function(_$RemoteUserMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? emailId = null,
    Object? message = null,
  }) {
    return _then(_$RemoteUserMessageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      emailId: null == emailId
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemoteUserMessageImpl implements _RemoteUserMessage {
  _$RemoteUserMessageImpl(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.emailId,
      required this.message});

  factory _$RemoteUserMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemoteUserMessageImplFromJson(json);

  @override
  final String id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String emailId;
  @override
  final String message;

  @override
  String toString() {
    return 'RemoteUserMessage(id: $id, firstName: $firstName, lastName: $lastName, emailId: $emailId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteUserMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.emailId, emailId) || other.emailId == emailId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, firstName, lastName, emailId, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteUserMessageImplCopyWith<_$RemoteUserMessageImpl> get copyWith =>
      __$$RemoteUserMessageImplCopyWithImpl<_$RemoteUserMessageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoteUserMessageImplToJson(
      this,
    );
  }
}

abstract class _RemoteUserMessage implements RemoteUserMessage {
  factory _RemoteUserMessage(
      {required final String id,
      required final String firstName,
      required final String lastName,
      required final String emailId,
      required final String message}) = _$RemoteUserMessageImpl;

  factory _RemoteUserMessage.fromJson(Map<String, dynamic> json) =
      _$RemoteUserMessageImpl.fromJson;

  @override
  String get id;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get emailId;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$RemoteUserMessageImplCopyWith<_$RemoteUserMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
