import 'package:flutter/material.dart';
import 'package:radio/nextpage.dart';

void main() {
  runApp(MyApp());
}

enum Gender { male, female,other }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radio Buttons Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Gender selectedGender = Gender.male;
  void _navigateToNextScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NextScreen(selectedGender: selectedGender),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Buttons Example'),
      ),
      body: Center(
        child: Column(
          children: [
            RadioListTile<Gender>(
              title: const Text('Male'),
              value: Gender.male,
              groupValue: selectedGender,
              onChanged: (value) {
                setState(() {
                  selectedGender = value!;
                });
              },
            ),
            RadioListTile<Gender>(
              title: const Text('Female'),
              value: Gender.female,
              groupValue: selectedGender,
              onChanged: (value) {
                setState(() {
                  selectedGender = value!;
                });
              },
            ),
            RadioListTile<Gender>(
              title: const Text('other'),
              value: Gender.other,
              groupValue: selectedGender,
              onChanged: (value) {
                setState(() {
                  selectedGender = value!;
                });
              },
            ),
            TextButton(
              onPressed: (){
              _navigateToNextScreen();
            }, 
            child:Text('Next Page') )
          ],
        ),
      ),
    );
  }
}
