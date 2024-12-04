// lib/models/coffee.dart
class Coffee {
  final String name;
  final String description;
  final String category;

  Coffee({required this.name, required this.description, required this.category});
}

List<Coffee> coffeeList = [
  Coffee(name: "Espresso", description: "Kopi hitam pekat dan kuat", category: "Hot Coffee"),
  Coffee(name: "Latte", description: "Kopi dengan susu yang lembut", category: "Hot Coffee"),
  Coffee(name: "Iced Americano", description: "Kopi dingin dengan rasa kuat", category: "Cold Coffee"),
];
