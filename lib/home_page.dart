import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 300, height: 300),
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
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.purple,
              foregroundColor: Colors.white,
              textStyle: TextStyle(fontSize: 18),
            ),
            child: const Text('Get Started'),
          ),
        ],
      ),
    );
  }
}
