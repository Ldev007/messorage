import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'local_user_message.freezed.dart';
part 'local_user_message.g.dart';

@freezed
class LocalUserMessage extends HiveObject with _$LocalUserMessage {
  LocalUserMessage._();

  @HiveType(typeId: 1)
  factory LocalUserMessage({
    @HiveField(1) required String id,
    @HiveField(2) required String firstName,
    @HiveField(3) required String lastName,
    @HiveField(4) required String emailId,
    @HiveField(5) required String message,
    @HiveField(6) required bool isPublished,
  }) = _LocalUserMessage;

  factory LocalUserMessage.fromJson(Map<String, dynamic> json) =>
      _$LocalUserMessageFromJson(json);
}
