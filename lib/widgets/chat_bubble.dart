import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/chat.dart';

class ChatBubble extends StatelessWidget {
  final Chat chat;

  const ChatBubble({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: chat.senderId == 'self' ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: chat.senderId == 'self' ? Colors.blue : Colors.grey[300],
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Text(
              chat.message,
              style: TextStyle(fontSize: 16.0, color: chat.senderId == 'self' ? Colors.white : Colors.black),
            ),
          ),
          const SizedBox(height: 4.0),
          Text(
            DateFormat('yyyy-MM-dd HH:mm').format(chat.timestamp),
            style: const TextStyle(fontSize: 12.0, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
