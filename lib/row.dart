 import 'package:flutter/material.dart';
// void main(){
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title:const Text('My first App'),
//         ),
//         body: const Row(
//           // mainAxisAlignment: MainAxisAlignment.center,//center in row
//           // mainAxisAlignment: MainAxisAlignment.spaceEvenly, //space between children
//           // mainAxisAlignment: MainAxisAlignment.end, //left in body screen
//           //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//            children: [
//             Icon(Icons.safety_check,
//                 color: Colors.yellow,
//                 size: 50),
//             Text("This a Row",
//             style: TextStyle(
//               fontSize: 25,
//               fontWeight: FontWeight.bold,
//               decoration: TextDecoration.underline,
//               color: Colors.blue,
//             )),
//             Icon(Icons.star,color: Colors.red, size: 50),
//           ],
//         ),
//       )
//     )
//   );
// }

//Using Main Axis & Cross Axis Alignment

// void main(){
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('My first App'),
//         ),
//             body: const Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             Icon(Icons.safety_check, color: Colors.blue, size: 50),
//             Icon(Icons.star, color: Colors.red, size: 50),
//             Icon(Icons.favorite, color: Colors.green, size: 50),
//             Icon(Icons.access_alarm, color: Colors.purple, size: 50),
//             Icon(Icons.account_balance, color: Colors.orange, size: 50),
//           ],
//       ),
//         ),
//       ),
//   );
// }


//Wrap In SingleChildScrollView

 void main(){
   runApp(
     MaterialApp(
       home: Scaffold(
         appBar: AppBar(
            title: const Text('My first App'),
          ),
      body:  Container(
        color: Colors.green,
        height: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment:
            MainAxisAlignment.center,
            crossAxisAlignment:
            CrossAxisAlignment.center,
            children: List.generate(
              100, (index) => const
                Icon(Icons.star,color: Colors.red, size: 50),
            ),
          ),
        ),
      ),
         ),
       ),
   );
 }