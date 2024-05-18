import 'package:flutter/material.dart';
import 'package:food_connect/models/restaurant.dart';
import 'package:food_connect/widgets/restaurant_card.dart';
import 'restaurant_profile_screen.dart';
import 'package:food_connect/widgets/custom_drawer.dart';
import 'package:food_connect/models/recipe.dart';

class HomeScreen extends StatelessWidget {
  final List<Restaurant> restaurants = [
    Restaurant(
      id: '1',
      name: 'Italian Bistro',
      description: 'Authentic Italian Cuisine',
      imageUrl: 'https://tinyurl.com/ye6evyeb',
      dishes: [
        Recipe(
          id: '1',
          title: 'Spaghetti Carbonara',
          description: 'A classic Italian pasta dish.',
          imageUrl: 'assets/images/menu_screenshot.png',
          authorId: 'user1',
        ),
        // Add more dishes for this restaurant
      ],
    ),
    Restaurant(
      id: '2',
      name: 'Lavender Meadows',
      description: 'Sample Our Amazing Dishes',
      imageUrl: 'https://tinyurl.com/3y85h6b9',
      dishes: [
        Recipe(
          id: '2',
          title: 'Welcome',
          description: 'Popular Dishes',
          imageUrl: 'assets/images/menu_screenshot.png',
          authorId: 'user2',
        ),
        // Add more dishes for this restaurant
      ],
    ),
    // Add more restaurants
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurants'),
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RestaurantProfileScreen(restaurant: restaurants[index]),
                ),
              );
            },
            child: RestaurantCard(restaurant: restaurants[index]),
          );
        },
      ),
    );
  }
}
