import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            height: 300,
            color: Color.fromARGB(150, 255, 255, 255),
          ),
          SizedBox(height: 60),
          const Text(
            'Welcome to the Quiz App!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.purple,
              foregroundColor: Colors.white,
              textStyle: TextStyle(fontSize: 18),
            ),
            icon: Icon(Icons.arrow_forward),
            label: const Text('Get Started'),
          ),
        ],
      ),
    );
  }
}
