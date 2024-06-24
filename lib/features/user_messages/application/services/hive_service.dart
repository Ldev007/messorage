import 'package:chordify/features/user_messages/data/models/local_user_message.dart';
import 'package:chordify/features/user_messages/domain/user_message.dart';
import 'package:chordify/utils/network.dart';

import '../../data/repositories/concrete/hive_repository.dart';

class HiveService {
  final _hiveRepo = HiveRepoImplementation();

  init() async {
    await _hiveRepo.init();
  }

  List<UserMessage> getPendingMessages() => _hiveRepo.getPendingMessages();
  List<UserMessage> getSubmittedMessages() => _hiveRepo.getSubmittedMessages();
  Future<void> saveMessage({required UserMessage userMessage}) async {
    if (!NetworkUtils.checkIfOnline()) {
      _hiveRepo.addPendingMessage(
          userMessage: LocalUserMessage.fromJson(userMessage.toJson()));
    }
    _hiveRepo.addSubmittedMessage(
        userMessage: LocalUserMessage.fromJson(userMessage.toJson()));
  }

  Future<void> setMessageAsPublished(UserMessage userMsg) => _hiveRepo
      .setMessageAsPublished(LocalUserMessage.fromJson(userMsg.toJson()));

  Future<void> deletePendingMessage(UserMessage pendingMessage) =>
      _hiveRepo.deletePendingMessage(pendingMessage);
}
