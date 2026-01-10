import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RadioButtonExample(),
    );
  }
}

class RadioButtonExample extends StatefulWidget {
  @override
  _RadioButtonExampleState createState() => _RadioButtonExampleState();
}

class _RadioButtonExampleState extends State<RadioButtonExample> {
  int _selectedValue = 1; // ✅ state lives here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio Button Example'),
      ),
      body: Center(
        child: RadioListTile<int>(
          title: const Text('Option 1'),
          value: 1,
          groupValue: _selectedValue,
          onChanged: (int? value) {
            setState(() {
              _selectedValue = value!;
            });
          },
        ),
      ),
    );
  }
}
