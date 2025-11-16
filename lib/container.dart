// import 'package:flutter/material.dart';
// void main()=> runApp(Con());
// class Con extends StatefulWidget{
//   @override
//   _ConState createState()=> _ConState();
//
// }
// class _ConState extends State<Con>{
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Center(
//             child: Text('Flutter',
//               style: TextStyle(
//                 color: Colors.blue,
//                 fontSize: 30.0,
//                 fontWeight: FontWeight.w900,
//               ),
//             ),
//           ),
//           backgroundColor: Colors.brown,
//           leading: Padding(
//             padding: const EdgeInsets.only(left: 20.0),
//            child:Icon(Icons.menu, color: Colors.white, size: 30,),),
//           actions : <Widget>[
//             Padding(
//               padding: EdgeInsets.only(right: 20.0),
//            child: Icon(
//               Icons.search,
//           color: Colors.white,
//           size: 30.0,
//             // Rotate icon
//
//            ),
//           ),
//           ],
//
//           ),
//         body:Container(
//     color: Colors.green,
//     width: double.infinity,
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.end,
//           children: [
//             Container(height: 100,
//               width: 100,
//               color: Colors.red,
//             ),
//             const SizedBox(height: 40,),
//             Container(height: 100,
//               width: 100,
//               color: Colors.white,
//             ),
//             const SizedBox(height: 60,),
//           ],
//
//     ),
//         ),
//         ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=> runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('KPP HIGH SCHOOL',
            style: TextStyle(
                color: Colors.blue,
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
              ),

            ),
          ),
        ),
        body: Container(
          color: Colors.purpleAccent,
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                50, (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(height:100, width: 100, color: Colors.white,),
              ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}