import 'package:chordify/features/user_messages/application/providers/user_messages.dart';
import 'package:chordify/presentation/widgets/submitted_user_messages_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/user_message_form.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      userMessagesProvider,
      (old, current) async {
        if (old?.valueOrNull != null && current.valueOrNull != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Thank you, your message has been submitted',
              ),
            ),
          );
        }
      },
    );

    return Scaffold(
      body: Column(
        children: [
          Expanded(flex: 2, child: UserMessageForm()),
          const Expanded(child: SubmittedUserMessagesView()),
          const Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
