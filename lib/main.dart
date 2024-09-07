import 'package:flutter/material.dart';

void main() {
  runApp(HeroApp());
}

class HeroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Page')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
            );
          },
          child: Hero(
            tag: 'hero-demo',
            child: Icon(
              Icons.star,
              size: 100,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Page')),
      body: const Column(
        children: [
          SizedBox(height: 80,),
          Center(
            child: Hero(
              tag: 'hero-demo',
              child: Icon(
                Icons.star,
                size: 200,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
