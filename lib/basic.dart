import 'package:flutter/material.dart';

// void main() => runApp(MyStatelessidget(title: '',));


//This StatelessWidget
// class MyStatelessidget extends StatelessWidget{
//   final String title;
//
//   MyStatelessidget({required this.title});
//
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Hello'),
//           backgroundColor: Colors.blue,
//         ),
//         body: Center(
//           child: Padding(
//             padding: EdgeInsets.all(20.0),
//             child: Text(
//               'Fuck Flutter',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 30,
//                 color: Colors.black,
//                 // foreground: Paint()
//                 //   ..color= Colors.black
//                 //   ..style= PaintingStyle.stroke
//                 //   ..strokeWidth= 2.0,
//                 fontWeight: FontWeight.w900, // អក្សរ ដិត
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
void main()=> runApp(MyStateFul());

class MyStateFul extends StatefulWidget{
  @override
  _MyStatefulWidgetState createState()=>
      _MyStatefulWidgetState();
}
class _MyStatefulWidgetState extends State<MyStateFul>{
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Hello')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: Text('Counter: $counter'),
          ),
        ),
      ),
    );
  }
}
