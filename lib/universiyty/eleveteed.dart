import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Elevated Button'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
        child: Row(
             children: <Widget> [
               Container(
                 width: 150,
                 height: 200,
                 color: Colors.amber,
         child: ElevatedButton(
                onPressed: () {
                  // Action when button is pressed
                },
                child: Text('Button 1')
              ),
               ),
                SizedBox(width: 70),
          Container(
            width: 150,
            height: 200,
            color: Colors.amber,// Space between buttons
           child:  ElevatedButton(onPressed: (){},
               child:  Text('Button 2')),
          ),

          ],
        ),
        ),
      ),
      ),
      ),
    );

  }
}
