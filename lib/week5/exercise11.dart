import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TestingScreen(),
    );
  }
}
class TestingScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.arrow_back_ios_new),
            SizedBox(width: 50),
            Text('User Testing Screen'),
          ],
        )
      ),
      body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
               Positioned(
                   child:  Text("\"  This is the best app I have ever used. It's intuitive, beautiful, and has saved me so much time. A\n                   must-have! " "\"",
                     style: TextStyle(
                         fontSize: 16,
                         color: Colors.white,
                     fontStyle: FontStyle.italic),
                   ),
               top: 30,
               left: 30,
               right: 30,
               ),
              SizedBox(height: 40),
              Positioned(
                bottom: 20,
                 child:
                     Row(
                        children: [
             Container(
               height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 4,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: Icon(Icons.person, color: Colors.grey),
             ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Samantha Bee',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Verified Customer',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
        ],
      ),
              ),
      ],

    ),
    ),
    );
  }
}

