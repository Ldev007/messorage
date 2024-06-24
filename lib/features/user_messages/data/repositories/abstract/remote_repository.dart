import 'package:chordify/features/user_messages/data/models/remote_user_message.dart';

abstract class RemoteRepo {
  dynamic fetchMessages();
  dynamic saveMessage({required RemoteUserMessage userMsg});
  dynamic savePendingMessages(
      {required List<RemoteUserMessage> pendingUserMessages});
}
