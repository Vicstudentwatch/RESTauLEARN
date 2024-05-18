import 'package:food_connect/models/recipe.dart';

class Restaurant {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final List<Recipe> dishes;

  Restaurant({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.dishes,
  });
}
