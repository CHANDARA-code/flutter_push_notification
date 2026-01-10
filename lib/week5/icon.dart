import 'package:flutter/material.dart';
void main(List <String> args){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp ({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(home: Iconn());
  }
}

class Iconn extends StatelessWidget{
  const Iconn ({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon Example',),
      ),
        body: Center(
          child: Column(
            children: [
          Icon(
            Icons.favorite,
            color: Colors.pink,

          opticalSize: 50,
          ),
                 Icon(
            Icons.star,
            color: Colors.amber,
                 ),
          Icon(
            Icons.thumb_up,
            color: Colors.blue,
           ),

        ],
          ),
      ),
    );
  }
}