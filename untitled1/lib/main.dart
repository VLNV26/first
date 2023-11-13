import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Container - Volnova')),
          backgroundColor: Colors.teal, // Р¦РІРµС‚ РІРµСЂС…РЅРµР№ РїР°РЅРµР»Рё
          toolbarHeight: 80.0,
        ),
        body: Center(
          child: MyCustomWidget(),
        ),
      ),
    );
  }
}

class MyCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildHorseContainer(Colors.pinkAccent),
          _buildHorseContainer(Colors.purpleAccent),
          _buildHorseContainer(Colors.purple),
          _buildHorseContainer(Colors.deepPurple),
          _buildHorseContainer(Colors.blueAccent),
        ],
      ),
    );
  }

  Widget _buildHorseContainer(Color color) {
    return Container(
      width: 150.0,
      height: 70.0,
      margin: EdgeInsets.symmetric(vertical: 5.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}