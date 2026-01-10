import 'package:flutter/material.dart';

void main() {
  runApp(MyStateFul());
}

class MyStateFul extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStateFul> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(0, 152, 134, 1.0),
          title: const Text(
            'Expanded & Flexible Masterclass',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16, top: 12, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "1. The 'Flex' Ratio Bar",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF009886),
                ),
              ),
              const SizedBox(height: 4),
              const Padding(
                padding: EdgeInsets.only(left: 50),
                child: Text(
                  "Use Expanded(flex: n) to split space by percentage",
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // CARD
              Stack(
                children: [
                  Container(
                    height: 130,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 4,
                          offset: const Offset(2, 2),
                        ),
                      ],
                    ),
                  ),
                  // TITLE
                  const Positioned(
                    left: 15,
                    top: 15,
                    child: Text(
                      'Storage Usage',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  // PROGRESS BAR
                  Positioned(
                    left: 15,
                    right: 15,
                    top: 60,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Container(
                            height: 20,
                            decoration: const BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Text('50%',
                            style: TextStyle(color: Colors.white,
                            fontSize: 10)),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            height: 20,
                            color: Colors.orangeAccent,
                            alignment: Alignment.center,
                            child: Text('30%',
                            style: TextStyle(color: Colors.white,
                            fontSize: 10),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 20,
                            decoration: const BoxDecoration(
                              color: Color(0xE1E1E1FF),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),

                              ),
                            ),
                            alignment: Alignment.center,
                            child: Text('20%',
                            style: TextStyle(color: Colors.grey,
                            fontSize: 10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                       // Replace the Positioned widget for the legend (around line 113-175) with this:
                       Positioned(
                       left: 0,
                         right: 0,
                         top: 90,
                         child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             // Apps
                             Row(
                           children: [
                             Container(
                               width: 8,
                               height: 8,
                               decoration: const BoxDecoration(
                                 color: Colors.blueAccent,
                                 shape: BoxShape.circle,
                               ),
                             ),
                             const SizedBox(width: 4),
                             Text(
                               'Apps',
                               style: TextStyle(
                                 fontSize: 12,
                                 color: Colors.grey[700],
                               ),
                             ),
                           ],
                             ),
                             const SizedBox(width: 60),
                             Row(
                            children: [
                             // Photos
                             Container(
                               width: 8,
                               height: 8,
                               decoration: const BoxDecoration(
                                 color: Colors.orangeAccent,
                                 shape: BoxShape.circle,
                               ),
                             ),
                             const SizedBox(width: 4),
                             Text(
                               'Photos',
                               style: TextStyle(
                                 fontSize: 12,
                                 color: Colors.grey[700],
                               ),
                             ),
                             ],
                             ),
                             const SizedBox(width: 10),
                             Row(
                            children: [
                             // Free
                             Container(
                               width: 8,
                               height: 8,
                               decoration: const BoxDecoration(
                                 color: Color(0xE1E1E1FF),
                                 shape: BoxShape.circle,
                               ),
                             ),
                             const SizedBox(width: 4),
                             Text(
                               'Free',
                               style: TextStyle(
                                 fontSize: 12,
                                 color: Colors.grey[700],
                               ),
                             ),
                              ],
                             ),
                           ],
                         ),
                     ),
            ],
          ),
          SizedBox(height: 30,),
          Text("2. The 'Middle' Stetch",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF009886),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 50),
                child: Text(
                  "Use Expanded to force the middle widget to fill the gap",
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Stack(
          children: [
            Container(
              alignment: Alignment.center,
              height: 80,
              decoration: BoxDecoration(
                color:Color.fromRGBO(59, 82, 187, 1.0),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 4,
            offset: const Offset(2, 2),
                  ),
                ],
              ),
            ),
           Positioned(
            left: 10,
            right: 0,
            top: 10,
           child:  Row(
            children: [
           ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network('https://static.vecteezy.com/system/resources/previews/043/253/564/non_2x/sunrise-or-sunset-on-a-lake-or-river-with-cloudy-sky-reflection-in-the-water-in-summertime-aesthetics-of-vintage-film-photo.jpg',
            height: 60,
            width: 60,
              fit: BoxFit.cover,
            ),
           ),
              ],
            ),
           ),
            Positioned(
              right: 0,
              left: 80,
              top: 25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Bohemian Rhasody-Remastere...',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox(height: 10),
                  Text('Queen',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                  ),
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
              child: Row(
                children: [
                  SizedBox(width: 80),
                  Expanded(
                    child: Container(),
                  ),
                  Icon(Icons.play_circle_fill,
                  color: Colors.white,
                  size: 30,
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
          ],
          ),
              SizedBox(height: 30,),
              Text("3. Flexible vs. Overflow",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF009886),
                ),
              ),
               Padding(
                padding: EdgeInsets.only(left: 50),
                child: Text(
                  "Use Flexible to left text wrap without breaking the row",
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.notifications_active_rounded,
                          size: 24,
                          color: Color(0xFFFF8800),
                        ),
                        const SizedBox(width: 12),
                         Expanded(
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(fontSize: 13, color: Colors.black),
                              children: [
                                TextSpan(
                                  text: 'System Update: ',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                TextSpan(
                                  text:
                                  'A critical security patch is available for download. Please update your device immediately.',
                                ),
                              ],
                            ),
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const Text(
                          '5m ago',
                          style: TextStyle(fontSize: 11, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        ),
    );
              }
}