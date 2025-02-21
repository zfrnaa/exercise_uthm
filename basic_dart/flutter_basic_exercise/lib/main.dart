import 'package:flutter/material.dart';
import 'second_page.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
    title: "Flutter Introduction",
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Testing'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
        children: [Text("Hello Batman", style: TextStyle(fontSize: 32, color: Colors.red)),
        Text("Vanakam Bataman", style: TextStyle(fontSize: 32, color: Colors.blue)),
        Text("안녕하세요 벳트만", style: TextStyle(fontSize: 32, color: Colors.green)),
        ],

        )
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
          },
          child: Icon(Icons.add),
      ),
    );
  }
}
