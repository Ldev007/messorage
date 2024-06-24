import 'package:chordify/features/user_messages/domain/user_message.dart';

abstract class UserMessagesLocalDatabase {
  Future<bool> save({required UserMessage userMsg});
  Future<bool> update({required String msgId});
}
