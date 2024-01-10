import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    //return the private class
    return _QuestionScreen();
  }
}

//Private Class with "_" in the beginning
// will extends the State
class _QuestionScreen extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return const MaterialApp(
      home: Scaffold(body: Text('Hello!')),
    );
  }
}
