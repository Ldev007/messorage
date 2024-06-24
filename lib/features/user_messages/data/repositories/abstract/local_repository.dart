import 'package:chordify/features/user_messages/data/models/local_user_message.dart';

abstract class LocalRepo {
  dynamic getPendingMessages();
  dynamic getSubmittedMessages();
  Future<bool> addSubmittedMessages(
      {required List<LocalUserMessage> userMessages});
  Future<bool> addSubmittedMessage({required LocalUserMessage userMessage});
  Future<bool> addPendingMessage({required LocalUserMessage userMessage});
}
