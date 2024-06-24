// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_user_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocalUserMessage _$LocalUserMessageFromJson(Map<String, dynamic> json) {
  return _LocalUserMessage.fromJson(json);
}

/// @nodoc
mixin _$LocalUserMessage {
  @HiveField(1)
  String get id => throw _privateConstructorUsedError;
  @HiveField(2)
  String get firstName => throw _privateConstructorUsedError;
  @HiveField(3)
  String get lastName => throw _privateConstructorUsedError;
  @HiveField(4)
  String get emailId => throw _privateConstructorUsedError;
  @HiveField(5)
  String get message => throw _privateConstructorUsedError;
  @HiveField(6)
  bool get isPublished => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalUserMessageCopyWith<LocalUserMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalUserMessageCopyWith<$Res> {
  factory $LocalUserMessageCopyWith(
          LocalUserMessage value, $Res Function(LocalUserMessage) then) =
      _$LocalUserMessageCopyWithImpl<$Res, LocalUserMessage>;
  @useResult
  $Res call(
      {@HiveField(1) String id,
      @HiveField(2) String firstName,
      @HiveField(3) String lastName,
      @HiveField(4) String emailId,
      @HiveField(5) String message,
      @HiveField(6) bool isPublished});
}

/// @nodoc
class _$LocalUserMessageCopyWithImpl<$Res, $Val extends LocalUserMessage>
    implements $LocalUserMessageCopyWith<$Res> {
  _$LocalUserMessageCopyWithImpl(this._value, this._then);

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
    Object? isPublished = null,
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
      isPublished: null == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalUserMessageImplCopyWith<$Res>
    implements $LocalUserMessageCopyWith<$Res> {
  factory _$$LocalUserMessageImplCopyWith(_$LocalUserMessageImpl value,
          $Res Function(_$LocalUserMessageImpl) then) =
      __$$LocalUserMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(1) String id,
      @HiveField(2) String firstName,
      @HiveField(3) String lastName,
      @HiveField(4) String emailId,
      @HiveField(5) String message,
      @HiveField(6) bool isPublished});
}

/// @nodoc
class __$$LocalUserMessageImplCopyWithImpl<$Res>
    extends _$LocalUserMessageCopyWithImpl<$Res, _$LocalUserMessageImpl>
    implements _$$LocalUserMessageImplCopyWith<$Res> {
  __$$LocalUserMessageImplCopyWithImpl(_$LocalUserMessageImpl _value,
      $Res Function(_$LocalUserMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? emailId = null,
    Object? message = null,
    Object? isPublished = null,
  }) {
    return _then(_$LocalUserMessageImpl(
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
      isPublished: null == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1)
class _$LocalUserMessageImpl extends _LocalUserMessage {
  _$LocalUserMessageImpl(
      {@HiveField(1) required this.id,
      @HiveField(2) required this.firstName,
      @HiveField(3) required this.lastName,
      @HiveField(4) required this.emailId,
      @HiveField(5) required this.message,
      @HiveField(6) required this.isPublished})
      : super._();

  factory _$LocalUserMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalUserMessageImplFromJson(json);

  @override
  @HiveField(1)
  final String id;
  @override
  @HiveField(2)
  final String firstName;
  @override
  @HiveField(3)
  final String lastName;
  @override
  @HiveField(4)
  final String emailId;
  @override
  @HiveField(5)
  final String message;
  @override
  @HiveField(6)
  final bool isPublished;

  @override
  String toString() {
    return 'LocalUserMessage(id: $id, firstName: $firstName, lastName: $lastName, emailId: $emailId, message: $message, isPublished: $isPublished)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalUserMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.emailId, emailId) || other.emailId == emailId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isPublished, isPublished) ||
                other.isPublished == isPublished));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, firstName, lastName, emailId, message, isPublished);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalUserMessageImplCopyWith<_$LocalUserMessageImpl> get copyWith =>
      __$$LocalUserMessageImplCopyWithImpl<_$LocalUserMessageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalUserMessageImplToJson(
      this,
    );
  }
}

abstract class _LocalUserMessage extends LocalUserMessage {
  factory _LocalUserMessage(
      {@HiveField(1) required final String id,
      @HiveField(2) required final String firstName,
      @HiveField(3) required final String lastName,
      @HiveField(4) required final String emailId,
      @HiveField(5) required final String message,
      @HiveField(6) required final bool isPublished}) = _$LocalUserMessageImpl;
  _LocalUserMessage._() : super._();

  factory _LocalUserMessage.fromJson(Map<String, dynamic> json) =
      _$LocalUserMessageImpl.fromJson;

  @override
  @HiveField(1)
  String get id;
  @override
  @HiveField(2)
  String get firstName;
  @override
  @HiveField(3)
  String get lastName;
  @override
  @HiveField(4)
  String get emailId;
  @override
  @HiveField(5)
  String get message;
  @override
  @HiveField(6)
  bool get isPublished;
  @override
  @JsonKey(ignore: true)
  _$$LocalUserMessageImplCopyWith<_$LocalUserMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
