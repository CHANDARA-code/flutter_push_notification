import 'package:flutter/material.dart';

  void main() {
    runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('Hello world',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.red,
                ),
              ),
            ),
            backgroundColor: Colors.blue,
          ),
          body: Center(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Text('Hello World Flutter',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  // foreground: Paint()
                  //   ..color= Colors.black
                  //   ..style= PaintingStyle.stroke
                  //   ..strokeWidth= 2.0,
                  // fontWeight: FontWeight.w900,អក្សរ ដិត
                ),
              ),
            ),
          ),
        ),

      ),
      );
    }
