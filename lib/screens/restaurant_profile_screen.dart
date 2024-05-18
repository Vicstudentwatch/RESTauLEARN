import 'package:flutter/material.dart';
import 'package:food_connect/models/restaurant.dart';
import 'package:food_connect/widgets/recipe_card.dart';
import 'package:food_connect/models/chat_message.dart';
import 'package:food_connect/screens/chat_screen.dart';
import 'package:food_connect/widgets/chat_input.dart';

class RestaurantProfileScreen extends StatefulWidget {
  final Restaurant restaurant;

  const RestaurantProfileScreen({super.key, required this.restaurant});

  @override
  _RestaurantProfileScreenState createState() => _RestaurantProfileScreenState();
}

class _RestaurantProfileScreenState extends State<RestaurantProfileScreen> {
  final List<ChatMessage> _messages = []; // Initialize with some dummy messages

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.restaurant.name)),
        backgroundColor: Color.fromARGB(255, 247, 162, 65),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(widget.restaurant.imageUrl),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.restaurant.name,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  widget.restaurant.description,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Dishes',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              GridView.builder(
                padding: const EdgeInsets.all(8.0),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: widget.restaurant.dishes.length,
                itemBuilder: (context, index) {
                  return RecipeCard(recipe: widget.restaurant.dishes[index]);
                },
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatScreen(messages: _messages)),
                  );
                },
                child: const Text('Chat with Chef'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ChatInput(
        onSendMessage: (message) {
          setState(() {
            _messages.add(ChatMessage(senderId: 'User', message: message, timestamp: DateTime.now()));
          });
        },
      ),
    );
  }
}
