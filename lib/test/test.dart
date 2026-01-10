import 'package:flutter/material.dart';
void main () {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp ({super.key});
  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Main and Scaffold Example',
      theme: ThemeData (primarySwatch: Colors.blue),
      home: ScaffoldW(), // use the stateful widget here
    );
  }
  }
 class ScaffoldW extends StatelessWidget{
  const ScaffoldW ({super.key});
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text ('Scaffold Example'),

      ),
      body: const Center(
        child: Text ('Hello, this is a Scaffold example!'),
      ),
    );
  }

 }