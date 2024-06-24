import 'package:chordify/features/user_messages/application/providers/user_messages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'user_message_card.dart';

class SubmittedUserMessagesView extends ConsumerWidget {
  const SubmittedUserMessagesView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userMessages = ref.watch(userMessagesProvider);

    return switch (userMessages) {
      AsyncData(:final value) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Submitted messages',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: value.isNotEmpty
                    ? ListView.builder(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.01,
                          bottom: MediaQuery.of(context).size.height * 0.03,
                        ),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, i) =>
                            UserMessageCard(userMessage: value[i]),
                        itemCount: value.length,
                      )
                    : const Center(child: Text('No messages submitted yet')),
              ),
            ],
          ),
        ),
      AsyncError(:final error) => Center(
          child: Text('Some error occured\n$error'),
        ),
      _ => const Center(
          child: CircularProgressIndicator(),
        ),
    };
  }
}
