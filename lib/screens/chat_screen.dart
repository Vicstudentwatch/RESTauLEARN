import 'package:flutter/material.dart';
import 'package:food_connect/models/chat_message.dart';

class ChatScreen extends StatelessWidget {
  final List<ChatMessage> messages;

  const ChatScreen({super.key, required this.messages});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final message = messages[index];
          return ListTile(
            title: Text(message.senderId),
            subtitle: Text(message.message),
            trailing: Text(message.timestamp.toString()),
          );
        },
      ),
    );
  }
}
