import 'dart:io';

void main() {
  Product product = Product("Laptop", 4799);
  product.display();

  // Simulate user input for name and price
  print("Enter new product name: ");
  String? newName = stdin.readLineSync();
  print("Enter new product price: ");
  double? newPrice = double.parse(stdin.readLineSync()!);

  // Set new values based on user input
  product.name = newName!;
  product.price = newPrice;
  product.display();
}

class Product {
  String? _name;
  double? _price;

  Product(String name, double price) {
    this._name = name;
    this._price = price;
  }

  String get name => _name!;
  double get price => _price!;

  void set name(String? newName) {
    if (newName != null && newName.isNotEmpty) {
      _name = newName;
    }
  }

  void set price(double? newPrice) {
    if (newPrice != null && newPrice > 0) {
      this._price = newPrice;
    }
  }

  void display() {
    print("Product: ${this._name}, Price: ${this._price}");
  }
}