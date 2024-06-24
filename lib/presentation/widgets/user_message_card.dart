import 'package:chordify/features/user_messages/domain/user_message.dart';
import 'package:flutter/material.dart';

class UserMessageCard extends StatelessWidget {
  const UserMessageCard({super.key, required this.userMessage});

  final UserMessage userMessage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Card(
        elevation: 5,
        shadowColor: Colors.black38,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '"${userMessage.message}"',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        text:
                            '${userMessage.firstName} ${userMessage.lastName}\n',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: userMessage.emailId,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    userMessage.isPublished
                        ? const Spacer()
                        : Icon(
                            Icons.schedule_outlined,
                            size: Theme.of(context).iconTheme.size ?? 24 * 0.7,
                            color: Colors.grey,
                          ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
