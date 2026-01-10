// import 'package:flutter/material.dart';
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
//   Widget part1() {
//     return SizedBox(
//       //TODO: part 1
//         child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Row(
//               children: [
//                 Text(
//                   "Pether",
//                   style: TextStyle(
//                     fontSize: 50,
//                     fontWeight:FontWeight.w700,
//                   ),
//                 ),
//                 Text(" Ashe",
//                   style: TextStyle(
//                     fontSize: 50,
//                   ),
//                 ),
//
//               ],
//
//         ),
//
//             const Text(
//               "Product Designer",
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//
//           ],
//
//         ),
//       height: 10,
//     );
//
//
//   }
//
//
//   Widget part2(IconData icon, String text1, String text2, Color color) {
//     return Container(
//         height: 62,
//         color: color,
//       child: Padding(
//         padding: EdgeInsets.only(left: 30),
//         child: Row(
//           children: [
//             Icon(
//               icon,
//               size: 30,
//               color: Colors.white,
//             ),
//             SizedBox(width: 20),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//
//                 Text(
//                   text1,
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Text(
//                   text2,
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Colors.white,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//
//     );
//   }
//
//   Widget part3(String text) {
//     return Container(
//         padding: EdgeInsets.only(top: 20),
//       child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(text,
//           style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.w700,
//             ),
//           ),
//           SizedBox(height: 20),
//           ],
//       ),
//     );
//   }
//
//   Widget part4(String text1, String text2) {
//     return SizedBox(
//      child: Column(
//         children: [
//           Row(
//        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//        crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(
//                 width: 220,
//                 child: Text(
//                   text1,
//                   style: TextStyle(
//                     fontSize: 16,
//                   ),
//                 ),
//               ),
//              Text(
//               text2,
//               style: TextStyle(
//                 fontSize: 13,
//                 color: Color(0xFF475757),
//               ),
//           ),
//       ],
//           ),
//           SizedBox(height: 20),
//           ],
//      ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: [
//           SizedBox(
//             height: 812,
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 30, top: 80),
//                   child: SizedBox(height: 150, child: part1()),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 10),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       part2(Icons.location_on, "Address", "MicroLearnable",
//                           const Color(0xFFBCDCFF)),
//                       part2(Icons.call, "Phone", "+82 10-1234-5678",
//                           const Color(0xFF66B1FF)),
//                       part2(Icons.email, "Email", "Microlearnable@gmail.com",
//                           const Color(0xFF3491FF)),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 30),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       part3("Education"),
//                       part4("Barchelor of Graphic Design Havard University",
//                           "2012 ~ 2016"),
//                       part4("Master of UX Design Carnegie Mellon University",
//                           "2017 ~ 2019"),
//                       const Divider(
//                         color: Color(0xFFE8E8E8),
//                         thickness: 2,
//                       ),
//                       part3("Experience"),
//                       part4("Google, Product Designer", "2020 ~ present"),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//


import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      home: const FlexibleMasterclass(),
    );
  }
}

class FlexibleMasterclass extends StatelessWidget {
  const FlexibleMasterclass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.white),
        title: const Text(
          'Expanded & Flexible Masterclass',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SectionTitle(
            number: '1',
            title: 'The Flex Ratio Bar',
            subtitle: 'How expanded and flexible expand by percentage',
          ),
          const SizedBox(height: 12),
          const StorageCard(),
          const SizedBox(height: 24),
          const SectionTitle(
            number: '2',
            title: 'The Middle Stretch',
            subtitle: 'Make the middle widget stretch as far as you can',
          ),
          const SizedBox(height: 12),
          const MusicCard(),
          const SizedBox(height: 24),
          const SectionTitle(
            number: '3',
            title: 'Flexible vs. Overflow',
            subtitle: 'Use Flexible to fix overflow without shrinking the row',
          ),
          const SizedBox(height: 12),
          const SystemUpdateCard(),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String number;
  final String title;
  final String subtitle;

  const SectionTitle({
    Key? key,
    required this.number,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              '$number. ',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.teal[700],
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.teal[700],
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}

class StorageCard extends StatelessWidget {
  const StorageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Storage Usage',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              '24 GB of 128 GB used',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 8,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 8,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    height: 8,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                _buildLegendItem(Colors.blue, 'Apps'),
                const SizedBox(width: 16),
                _buildLegendItem(Colors.orange, 'Photos'),
                const SizedBox(width: 16),
                _buildLegendItem(Colors.grey[300]!, 'Free'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLegendItem(Color color, String label) {
    return Row(
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

class MusicCard extends StatelessWidget {
  const MusicCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Colors.indigo[700],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: NetworkImage('https://via.placeholder.com/48'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 12),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bohemian Rhapsody - Remastere...',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 2),
                  Text(
                    'Queen',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.play_arrow,
                color: Colors.indigo[700],
                size: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SystemUpdateCard extends StatelessWidget {
  const SystemUpdateCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.orange[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                Icons.warning,
                color: Colors.orange[700],
                size: 24,
              ),
            ),
            const SizedBox(width: 12),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'System Update: A critical security patch is available for download. Please update your device immediately.',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 2),
                  Text(
                    '5m ago',
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.grey,
                    ),
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