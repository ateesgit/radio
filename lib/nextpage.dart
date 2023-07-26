
import 'package:flutter/material.dart';
import 'package:radio/main.dart';

class NextScreen extends StatelessWidget {
  final Gender selectedGender;

  NextScreen({required this.selectedGender});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Screen'),
      ),
      body: Center(
        child: Text('Selected Gender: ${selectedGender.toString().split('.').last}'),
      ),
    );
  }
}