import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_message.freezed.dart';
part 'user_message.g.dart';

@freezed
class UserMessage with _$UserMessage {
  factory UserMessage({
    required String id,
    required String firstName,
    required String lastName,
    required String emailId,
    required String message,
    required bool isPublished,
  }) = _UserMessage;

  factory UserMessage.fromJson(Map<String, dynamic> json) =>
      _$UserMessageFromJson(json);
}
