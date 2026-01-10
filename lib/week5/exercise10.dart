import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Microject(),
    );
  }
}
class Microject extends StatelessWidget {
  const Microject({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
 return Scaffold(
      backgroundColor: const Color(0xFF4D8BBA),
      appBar: AppBar(
        backgroundColor: const Color(0xFF3F80A8),
        title: Row(
          children: [
            Icon(Icons.arrow_back_ios_new_outlined),
            SizedBox(width: 70),
            Center(child: Text('Weather Report'),)
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentGeometry.topCenter,
          children: [
          Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
            ],
          ),
        ),
          Column(
            children: [
              SizedBox(height: 30,),
              Positioned(
                top: 100,
                left: 0,
                right: 0,
                child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 10),
                        Icon(Icons.wb_sunny, size: 50, color: Colors.yellow,),
                        Column(
                          children: [
                            Text('Sunny', style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),
                            Text('Phnom Penh', style: TextStyle(fontSize: 13, color: Colors.white70),),
                          ],
                        ),
                        SizedBox(width: 20),
                        Text('25°', style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),),
                        SizedBox(width: 10),
                      ],
                    ),
              ),
              SizedBox(height: 20,),

              Positioned(
                left: 0,
                right: 0,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SizedBox(width: 5,),
                      Text('Now', style: TextStyle(color: Colors.white70),),
                      SizedBox(height: 5,),
                      Icon(Icons.sunny, color: Colors.yellow,),
                      SizedBox(height: 5,),
                      Text('32°', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Column(
                    children: [
                      Text('11 AM', style: TextStyle(color: Colors.white70),),
                      SizedBox(height: 5,),
                      Icon(Icons.sunny, color: Colors.yellow,),
                      SizedBox(height: 5,),
                      Text('33°', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Column(
                    children: [
                      Text('11 AM', style: TextStyle(color: Colors.white70),),
                      SizedBox(height: 5,),
                      Icon(Icons.sunny_snowing, color: Colors.orangeAccent,),
                      SizedBox(height: 5,),
                      Text('34°', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Column(
                    children: [
                      Text('12 AM', style: TextStyle(color: Colors.white70),),
                      SizedBox(height: 5,),
                      Icon(Icons.cloud, color: Colors.white,),
                      SizedBox(height: 5,),
                      Text('33°', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      SizedBox(width: 5,)
                    ],
                  )
                ],
              ),
              ),
            ],
          ),
     ],
 ),
   ],
 ),
      ),
        );
      }
}
//
//
//           Container(
//           height: 220,
//           width: 320,
//           padding: const EdgeInsets.all(16),
//           decoration: BoxDecoration(
//             color: Colors.blueAccent,
//             borderRadius: BorderRadius.circular(12),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black26,
//                 blurRadius: 10,
//                 offset: Offset(0, 4),
//               ),
//             ],
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//
//               // 🔝 TOP ROW
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     children: const [
//                       Icon(Icons.wb_sunny, size: 40, color: Colors.yellow),
//                       SizedBox(width: 10),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Sunny',
//                             style: TextStyle(
//                               fontSize: 22,
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           Text(
//                             'Phnom Penh',
//                             style: TextStyle(
//                               fontSize: 13,
//                               color: Colors.white70,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   const Text(
//                     '32°',
//                     style: TextStyle(
//                       fontSize: 40,
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),
//
//               const SizedBox(height: 20),
//
//               // 🔽 BOTTOM ROW
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: const [
//                   _WeatherHour(label: 'Now', icon: Icons.wb_sunny, temp: '32°'),
//                   _WeatherHour(label: '10AM', icon: Icons.wb_sunny, temp: '33°'),
//                   _WeatherHour(label: '11AM', icon: Icons.wb_cloudy, temp: '34°'),
//                   _WeatherHour(label: '12PM', icon: Icons.cloud, temp: '33°'),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         ],
//       ),
//         ],
//       )
//  ),
//       );
//   }
// }
// class _WeatherHour extends StatelessWidget {
//   final String label;
//   final IconData icon;
//   final String temp;
//
//   const _WeatherHour({
//     required this.label,
//     required this.icon,
//     required this.temp,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text(label, style: TextStyle(color: Colors.white70)),
//         SizedBox(height: 6),
//         Icon(icon, color: Colors.yellow),
//         SizedBox(height: 6),
//         Text(
//           temp,
//           style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ],
//     );
//   }
// }



// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Microject(),
//     );
//   }
// }
//
// class Microject extends StatelessWidget {
//   const Microject({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF4D8BBA),
//       appBar: AppBar(
//         backgroundColor: const Color(0xFF3F80A8),
//         leading: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white),
//         title: Text('Weather Report'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Container(
//           margin: EdgeInsets.symmetric(horizontal: 20),
//           padding: EdgeInsets.all(20),
//           decoration: BoxDecoration(
//             color: Colors.blueAccent,
//             borderRadius: BorderRadius.all(Radius.circular(15)),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.2),
//                 blurRadius: 10,
//                 offset: Offset(0, 4),
//               ),
//             ],
//           ),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               // Main weather info
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Icon(Icons.wb_sunny, size: 60, color: Colors.yellow),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Sunny',
//                         style: TextStyle(
//                           fontSize: 25,
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       Text(
//                         'Phnom Penh',
//                         style: TextStyle(
//                           fontSize: 13,
//                           color: Colors.white70,
//                         ),
//                       ),
//                     ],
//                   ),
//                   Text(
//                     '32°',
//                     style: TextStyle(
//                       fontSize: 50,
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),
//
//               SizedBox(height: 30),
//
//               // Hourly forecast
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   _buildHourlyForecast('Now', Icons.wb_sunny, '32°'),
//                   _buildHourlyForecast('10AM', Icons.wb_sunny, '33°'),
//                   _buildHourlyForecast('11AM', Icons.wb_sunny, '34°'),
//                   _buildHourlyForecast('12PM', Icons.cloud, '33°'),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildHourlyForecast(String time, IconData icon, String temp) {
//     return Column(
//       children: [
//         Text(
//           time,
//           style: TextStyle(color: Colors.white70, fontSize: 12),
//         ),
//         SizedBox(height: 8),
//         Icon(
//           icon,
//           color: icon == Icons.cloud ? Colors.grey[300] : Colors.yellow,
//           size: 30,
//         ),
//         SizedBox(height: 8),
//         Text(
//           temp,
//           style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//             fontSize: 16,
//           ),
//         ),
//       ],
//     );
//   }
// }