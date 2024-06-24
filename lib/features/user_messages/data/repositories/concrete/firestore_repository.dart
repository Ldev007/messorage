import 'package:chordify/features/user_messages/data/models/remote_user_message.dart';
import 'package:chordify/features/user_messages/data/repositories/abstract/remote_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import '../../../../../firebase_options.dart';

class FirestoreRepoImplementation implements RemoteRepo {
  CollectionReference<Map<String, dynamic>>? _userMessagesCollection;

  init() async {
    _userMessagesCollection =
        FirebaseFirestore.instance.collection('user_messages');
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  }

  @override
  Future<List<RemoteUserMessage>> fetchMessages() async {
    List<RemoteUserMessage> remoteUserMessages = [];

    try {
      _userMessagesCollection!.get().then(
        (s) {
          for (var doc in s.docs) {
            remoteUserMessages.add(RemoteUserMessage.fromJson(doc.data()));
          }
        },
      );

      return remoteUserMessages;
    } catch (error, strace) {
      print('FETCH MESSAGES\n\nERRROR-\n--\n$error\mSTRACE-\n\n$strace');
      return [];
    }
  }

  @override
  Future<void> saveMessage({required RemoteUserMessage userMsg}) async {
    return await _userMessagesCollection!.doc(userMsg.id).set(userMsg.toJson());
  }

  @override
  Future<bool> savePendingMessages(
      {required List<RemoteUserMessage> pendingUserMessages}) async {
    try {
      for (RemoteUserMessage pendingUserMsg in pendingUserMessages) {
        _userMessagesCollection!
            .doc(pendingUserMsg.id)
            .set(pendingUserMsg.toJson());
      }
    } catch (e, s) {
      print('-SAVING PENDING MESSAGES \n $e \n--\n $s');
      return false;
    }
    return true;
  }
}
