import 'package:flutter/material.dart';

void main() {
  runApp(MetroSports237());
}

class MetroSports237 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Home()
    );
  }
}

final List<Widget> screens = [
  Scaffold(),Scaffold(),Scaffold(),Scaffold(),
];
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: 0,
        children: [...screens]
      ),
      bottomNavigationBar: BottomNavigationBar()
    );
  }
}