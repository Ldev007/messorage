import 'package:chordify/features/user_messages/domain/user_message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class UserMessagesRemoteDb {
  Future<DocumentReference<Map<String, dynamic>>> save(
      {required UserMessage userMsg});
}
