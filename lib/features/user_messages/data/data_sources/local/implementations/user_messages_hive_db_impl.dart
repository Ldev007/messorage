import 'package:chordify/features/user_messages/data/data_sources/local/user_messages_local_db_interface.dart';
import 'package:chordify/features/user_messages/domain/user_message.dart';

class UserMessagesHiveDbImpl implements UserMessagesLocalDatabase{
  @override
  Future<bool> save({required UserMessage userMsg}) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<bool> update({required String msgId}) {
    // TODO: implement update
    throw UnimplementedError();
  }

}