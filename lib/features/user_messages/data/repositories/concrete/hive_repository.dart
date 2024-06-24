import 'package:chordify/features/user_messages/data/models/local_user_message.dart';
import 'package:chordify/features/user_messages/data/repositories/abstract/local_repository.dart';
import 'package:chordify/features/user_messages/domain/user_message.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'hive_repository.g.dart';

class HiveRepoImplementation implements LocalRepo {
  Box<LocalUserMessage>? pendingMessagesBox;
  Box<LocalUserMessage>? submittedMessagesBox;

  init() async {
    pendingMessagesBox =
        await Hive.openBox<LocalUserMessage>('pending_messages');
    submittedMessagesBox =
        await Hive.openBox<LocalUserMessage>('submitted_messages');
  }

  @override
  List<UserMessage> getPendingMessages() {
    for (var msg in pendingMessagesBox!.values) {
      print(msg.runtimeType);
    }
    final pmsgs = pendingMessagesBox!.values.map((singlePendingUserMessageMap) {
      return UserMessage.fromJson(singlePendingUserMessageMap.toJson());
    }).toList();
    return pmsgs;
  }

  @override
  List<UserMessage> getSubmittedMessages() {
    // for (var msg in submittedMessagesBox!.values.cast<Map<String, dynamic>>()) {
    //   print(msg.runtimeType);
    // }
    final vals = submittedMessagesBox!.toMap();
    print('VALS : $vals');
    return submittedMessagesBox!
        .toMap()
        .values
        .map((singleSubmittedUserMessage) =>
            UserMessage.fromJson(singleSubmittedUserMessage.toJson()))
        .toList();
  }

  @override
  Future<bool> addSubmittedMessages(
      {required List<LocalUserMessage> userMessages}) async {
    for (var aMsg in userMessages) {
      submittedMessagesBox!.put(aMsg.id, aMsg);
    }
    return true;
  }

  @override
  Future<bool> addSubmittedMessage(
      {required LocalUserMessage userMessage}) async {
    return await submittedMessagesBox!.put(userMessage.id, userMessage).then(
      (v) => true,
      onError: (e, s) {
        print('$e -- $s');
        return false;
      },
    );
  }

  @override
  Future<bool> addPendingMessage(
      {required LocalUserMessage userMessage}) async {
    return await pendingMessagesBox!.add(userMessage).then(
      (v) => true,
      onError: (e, s) {
        print('$e -- $s');
        return false;
      },
    );
  }

  Future<void> setMessageAsPublished(LocalUserMessage userMsg) async {
    final updatedUserMsg = LocalUserMessage(
      id: userMsg.id,
      firstName: userMsg.firstName,
      lastName: userMsg.lastName,
      emailId: userMsg.emailId,
      message: userMsg.message,
      isPublished: true,
    );
    submittedMessagesBox!.put(userMsg.id, updatedUserMsg);
  }
}

@riverpod
HiveRepoImplementation hiveRepo(HiveRepoRef ref) => HiveRepoImplementation();
