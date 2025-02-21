import 'package:flutter/material.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BMICalculator(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  final String name = 'John';

}

class _MyHomePageState extends State<MyHomePage> {
  double height = 100.0;
  double weight = 40.0;
  String resultMessage = ""; // To store the message

  void _calculateBMI() {
    // Basic BMI calculation (replace with your actual formula)
    double bmi = weight / ((height / 100) * (height / 100));

    setState(() {
      if (bmi < 18.5) {
        resultMessage = "Underweight";
      } else if (bmi < 25) {
        resultMessage = "Normal weight";
      } else if (bmi < 30) {
        resultMessage = "Overweight";
      } else {
        resultMessage = "Obese";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Image (replace with your actual image)
              Image.asset('assets/heart.png', height: 100), // Example: assumes you have heart.png in assets

              const Text(
                'BMI Calculator',
                style: TextStyle(fontSize: 24),
              ),
              const Text(
                'We care about your health',
                style: TextStyle(fontSize: 16),
              ),

              const Text('Height (cm)'),
              Slider(
                value: height,
                min: 50, // Example min height
                max: 250, // Example max height
                onChanged: (newValue) {
                  setState(() {
                    height = newValue;
                  });
                },
              ),
              Text('${height.toStringAsFixed(1)} cm'), // Display height value

              const Text('Weight (kg)'),
              Slider(
                value: weight,
                min: 20, // Example min weight
                max: 200, // Example max weight
                onChanged: (newValue) {
                  setState(() {
                    weight = newValue;
                  });
                },
              ),
              Text('${weight.toStringAsFixed(1)} kg'), // Display weight value

              ElevatedButton(
                onPressed: _calculateBMI, // Call calculation function
                child: const Text('CALCULATE'),
              ),

              // Display the result message
              Text(
                resultMessage, // Display the message
                style: const TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}