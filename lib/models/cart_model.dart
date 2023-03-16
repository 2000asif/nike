class Item {
  final String name;
  final String description;
  final double price;
  final String image;

  Item(
      {required this.name,
      required this.description,
      required this.price,
      required this.image});
}

class Cart {
  final List<Item> items = [];

  double get totalPrice => items.fold(0, (total, item) => total + item.price);
}
