import 'package:flutter/material.dart';
import 'package:food_connect/models/chat.dart';
import 'package:food_connect/widgets/chat_bubble.dart';

class ChatScreen extends StatelessWidget {
  final List<Chat> chats;

  const ChatScreen({super.key, required this.chats});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          return ChatBubble(chat: chats[index]);
        },
      ),
    );
  }
}
