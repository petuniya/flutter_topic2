import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 50;

  void decrementCounter() {
    setState(() {
      counter--;
    });
  }

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
        centerTitle: true,
        backgroundColor: Color(0x8E3AD235),
      ),
      backgroundColor: Colors.lightGreenAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Tap "-" to decrease', style: TextStyle(fontSize: 18)),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 130),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: decrementCounter,
                  ),
                  Text('$counter', style: TextStyle(fontSize: 30)),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: incrementCounter,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Text('Tap "+" to increase', style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
