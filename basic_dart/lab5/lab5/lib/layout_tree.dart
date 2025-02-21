import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

// MyApp is the root widget of the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

// HomePage is the main screen of the app
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
// Set the background color of the scaffold
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
// Set the background color of the app bar
        backgroundColor: Colors.green,
// Set the title of the app bar
        title: const Text("BIM30603"),
      ),
// The main body of the scaffold
      body: const Center(
// Display a centered text widget
        child: Text(
          "Hello Semua!!",
// Apply text styling
          style: TextStyle(
            fontSize: 24, // Set font sizeBIM30603 Lab Activity #5
            fontWeight: FontWeight.bold, // Set font weight
          ),
        ),
      ),
    );
  }
}
