import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_user_message.freezed.dart';
part 'remote_user_message.g.dart';

@freezed
class RemoteUserMessage with _$RemoteUserMessage {
  factory RemoteUserMessage({
    required String id,
    required String firstName,
    required String lastName,
    required String emailId,
    required String message,
  }) = _RemoteUserMessage;

  factory RemoteUserMessage.fromJson(Map<String, dynamic> json) =>
      _$RemoteUserMessageFromJson(json);
}
