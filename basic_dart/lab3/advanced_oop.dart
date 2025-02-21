import 'dart:math';

// Base Shape class
class Shape {
  double area()=>0;
}

// Circle subclass extending Shape
class Circle extends Shape {
  double radius;

  // Constructor
  Circle(this.radius);

  // Override area method to calculate circle area
  @override
  double area() {
    return pi * radius * radius;
  }
}

void main() {
  // Create a circle with radius 5
  var circle = Circle(5);

  // Display circle information
  print('Circle Information');
  // Print the radius
  print('Circle Radius: ${circle.radius}');
  // Calculate and print the area
  print('Circle Area: ${circle.area().toStringAsFixed(2)}');
}