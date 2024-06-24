import 'package:chordify/features/user_messages/data/data_sources/remote/user_messages_remote_db.dart';
import 'package:chordify/features/user_messages/domain/user_message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserMessagesFirestoreDbImpl implements UserMessagesRemoteDb {
  @override
  Future<DocumentReference<Map<String, dynamic>>> save(
      {required UserMessage userMsg}) async {
    return await FirebaseFirestore.instance
        .collection('pendingUserMessages')
        .add(userMsg.toJson());
  }
}
