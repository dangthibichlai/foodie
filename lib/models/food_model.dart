class FoodModel {
  int? id;
  String? imageStr;
  String? name;
  String? description;
  double? price;
  int? quantity;

  FoodModel({
    this.id,
    this.imageStr,
    this.name,
    this.description,
    this.price,
    this.quantity,
  });

  double get total => (price ?? 0.0) * (quantity ?? 0);
}

List<FoodModel> foods = [
  FoodModel(
      id: 1,
      imageStr: 'assets/images/food_1.png',
      name: 'Fried Chicken',
      price: 20.0,
      quantity: 2,
      description: 'Golden browse fried chicken'),
  FoodModel(
      id: 2,
      imageStr: 'assets/images/food_2.png',
      name: 'Cheese Sandwich',
      price: 18.0,
      quantity: 3,
      description: 'Grilled Cheese Sandwich'),
  FoodModel(
      id: 3,
      imageStr: 'assets/images/food_3.png',
      name: 'Egg Pasta',
      price: 15.0,
      quantity: 1,
      description: 'Spicy Chicken Pasta'),
  FoodModel(
      id: 4,
      imageStr: 'assets/images/food_1.png',
      name: 'Fried Chicken',
      price: 20.0,
      quantity: 2,
      description: 'Golden browse fried chicken'),
  FoodModel(
      id: 5,
      imageStr: 'assets/images/food_2.png',
      name: 'Cheese Sandwich',
      price: 18.0,
      quantity: 3,
      description: 'Grilled Cheese Sandwich'),
  FoodModel(
      id: 6,
      imageStr: 'assets/images/food_3.png',
      name: 'Egg Pasta',
      price: 15.0,
      quantity: 1,
      description: 'Spicy Chicken Pasta'),
];
