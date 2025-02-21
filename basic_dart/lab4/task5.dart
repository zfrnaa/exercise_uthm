class Item {
  String _name;
  double _price;
  int _quantity;

  // Constructor with validation
  Item(String name, double price, int quantity)
      : _name = name,
        _price = price,
        _quantity = quantity {
    validateQuantity(quantity);
  }

  // Getters
  String get name => _name;
  double get price => _price;
  int get quantity => _quantity;
  double get total => _price * _quantity;

  // Setters with validation
  set name(String newName) {
    if (newName.isNotEmpty) {
      this._name = newName;
    }
  }

  set price(double newPrice) {
    _price = newPrice;
  }

  set quantity(int newQuantity) {
    validateQuantity(newQuantity);
    _quantity = newQuantity > 0 ? newQuantity : 1;
  }

  void validateQuantity(int value) {
    if (value < 0) {
      throw ArgumentError('Quantity cannot be negative');
    }
  }

  @override
  String toString() =>
    'Item: $name, Price: \$${price.toStringAsFixed(2)}, Quantity: $quantity, Total: \$${total.toStringAsFixed(2)}';
}

class Store {
  final List<Item> _items = [];

  // Add item with null check
  void addItem(Item? item) {
    if (item == null) {
      throw ArgumentError('Cannot add null item');
    }
    _items.add(item);
  }

  // Get total value using higher-order function reduce
  double getTotalValue() {
    return _items.isEmpty
        ? 0.0
        : _items.map((item) => item.total).reduce((a, b) => a + b);
  }

  // Apply discount using higher-order function map
  void applyDiscount(double? percentage) {
    if (percentage == null || percentage < 0 || percentage > 100) {
      throw ArgumentError('Invalid discount percentage: $percentage');
    }

    for (var item in _items) {
      double newPrice = item.price * (1 - percentage / 100);
      item.price = double.parse(newPrice.toStringAsFixed(2));
    }
  }

  // Display items using higher-order function forEach
  void displayItems() {
    if (_items.isEmpty) {
      print('Store is empty');
      return;
    }
    _items.forEach((item) => print(item));
    print('Total Store Value: \$${getTotalValue().toStringAsFixed(2)}');
  }

  // Getter for items (returns copy to prevent direct modification)
  List<Item> get items => List.unmodifiable(_items);
}

void main() {
  try {
    Store store = Store();

    // Adding items with validation
    store.addItem(Item("Laptop", 4799.99, 2));
    store.addItem(Item("Mouse", 99.99, 5));
    store.addItem(Item("Keyboard", 199.99, 3));

    print('\nInitial Inventory:');
    store.displayItems();

    print('\nApplying 10% discount:');
    store.applyDiscount(10);
    store.displayItems();

    // Demonstrating error handling
    try {
      store.addItem(null); // Should throw error
    } catch (e) {
      print('\nError: $e');
    }

    try {
      store.applyDiscount(-5); // Should throw error
    } catch (e) {
      print('Error: $e');
    }
  } catch (e) {
    print('An error occurred: $e');
  }
}