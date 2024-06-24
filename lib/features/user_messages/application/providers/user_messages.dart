import 'package:chordify/features/user_messages/application/services/firestore_service.dart';
import 'package:chordify/features/user_messages/application/services/hive_service.dart';
import 'package:chordify/features/user_messages/domain/user_message.dart';
import 'package:chordify/utils/network.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_messages.g.dart';

@riverpod
class UserMessages extends _$UserMessages {
  List<UserMessage> userMessages = [];
  final _hiveService = HiveService();
  final _firestoreService = FirestoreService();

  init() async {
    await _hiveService.init();
    await _firestoreService.init();
    await NetworkUtils.init();
  }

  Future<void> saveUserMessage({
    required String firstName,
    required String lastName,
    required String emailId,
    required String message,
  }) async {
    try {
      state = const AsyncValue.loading();

      final id = 'msg${_hiveService.getSubmittedMessages().length}';

      final userMessage = UserMessage(
        id: id,
        firstName: firstName,
        lastName: lastName,
        emailId: emailId,
        message: message,
        isPublished: NetworkUtils.checkIfOnline(),
      );

      _hiveService.saveMessage(userMessage: userMessage);
      if (NetworkUtils.checkIfOnline()) {
        _firestoreService.publishMessage(userMessage: userMessage);
      }
      state = AsyncValue.data(_hiveService.getSubmittedMessages());
    } catch (error, strace) {
      print('SAVING MESSAGES -- \n\n ERROR \n $error \n--\nSTRACE\n$strace');
      state = AsyncValue.error(error, strace);
    }
  }

  _sync() async {
    final remoteMsgsCount = (await _firestoreService.fetchMessages()).length;
    final localMsgsCount = _hiveService.getPendingMessages().length;

    try {
      if (remoteMsgsCount != localMsgsCount) {
        state = const AsyncValue.loading();
        final localPendingMsgs = _hiveService.getPendingMessages();
        _firestoreService.publishMessages(
            pendingUserMessages: localPendingMsgs);
        for (var localPendingMessage in localPendingMsgs) {
          _hiveService.setMessageAsPublished(localPendingMessage);
        }
        state = AsyncValue.data(_hiveService.getSubmittedMessages());
      }
    } catch (error, strace) {
      state = AsyncValue.error(error, strace);
    }
  }

  Future<void> submitPendingUserMessages() async {
    final pendingUserMessagesBox = await Hive.openBox('pendingUserMessages');
    if (pendingUserMessagesBox.length > 0) {}
  }

  @override
  Future<List<UserMessage>> build() async {
    await init();
    Connectivity().onConnectivityChanged.listen((status) {
      if (NetworkUtils.checkIfOnline(status: status)) {
        _sync();
      }
    });
    try {
      final localPendingMessages = _hiveService.getPendingMessages();

      if (NetworkUtils.checkIfOnline()) {
        if (localPendingMessages.isNotEmpty) {
          await _firestoreService.publishMessages(
              pendingUserMessages: localPendingMessages);
        }
      }

      final localSubmittedMessages = _hiveService.getSubmittedMessages();
      return localSubmittedMessages;
    } catch (error, strace) {
      throw AsyncValue.error(error, strace);
    }
  }
}