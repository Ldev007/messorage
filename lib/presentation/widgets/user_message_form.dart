import 'package:chordify/features/user_messages/application/providers/user_messages.dart';
import 'package:chordify/features/user_messages/domain/user_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserMessageForm extends ConsumerWidget {
  UserMessageForm({super.key});

  final TextEditingController firstNameEditingController =
      TextEditingController();
  final TextEditingController lastNameEditingController =
      TextEditingController();
  final TextEditingController emailEditingController = TextEditingController();
  final TextEditingController messageEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'User Details',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TextField(
                    controller: firstNameEditingController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('First name'),
                      hintText: 'John',
                    ),
                  ),
                ),
                Spacer(),
                Expanded(
                  flex: 2,
                  child: TextField(
                    controller: lastNameEditingController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Last name'),
                      hintText: 'Doe',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: TextField(
              controller: emailEditingController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Email address'),
                hintText: 'johndoe@xyz.com',
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: TextField(
              controller: messageEditingController,
              maxLines: null,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Your Message'),
                hintText: 'Enter your question or message',
              ),
            ),
          ),
          FilledButton(
            onPressed: () =>
                ref.read(userMessagesProvider.notifier).saveUserMessage(
                      firstName: firstNameEditingController.text,
                      lastName: lastNameEditingController.text,
                      emailId: emailEditingController.text,
                      message: messageEditingController.text,
                    ),
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
