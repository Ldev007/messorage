import 'package:chordify/features/user_messages/data/models/remote_user_message.dart';
import 'package:chordify/features/user_messages/data/repositories/concrete/firestore_repository.dart';
import 'package:chordify/features/user_messages/domain/user_message.dart';

class FirestoreService {
  final _firestoreRepo = FirestoreRepoImplementation();

  init() async {
    await _firestoreRepo.init();
  }

  Future<void> publishMessages(
      {required List<UserMessage> pendingUserMessages}) async {
    List<RemoteUserMessage> remotePendingUserMessages = [];
    for (var aPendingUserMessage in pendingUserMessages) {
      remotePendingUserMessages
          .add(RemoteUserMessage.fromJson(aPendingUserMessage.toJson()));
    }
    await _firestoreRepo.savePendingMessages(
        pendingUserMessages: remotePendingUserMessages);
  }

  Future<void> publishMessage({required UserMessage userMessage}) async =>
      await _firestoreRepo.saveMessage(
        userMsg: RemoteUserMessage.fromJson(userMessage.toJson()),
      );

  Future<List<UserMessage>> fetchMessages() async {
    List<UserMessage> userMessages = [];
    try {
      _firestoreRepo.fetchMessages().then((fetchedMessages) {
        for (var aMessage in fetchedMessages) {
          userMessages.add(UserMessage.fromJson(aMessage.toJson()));
        }
      });
      return userMessages;
    } catch (error, strace) {
      print('FETCH MESSAGES\n\nERROR\n$error\n--\nSTRACE\n$strace');
      return [];
    }
  }
}
