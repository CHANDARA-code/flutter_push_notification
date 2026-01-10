import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProfileScreen(),
    );
  }
}
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Card',
        style: TextStyle(color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w500,
        ),
        ),
      ),
      body: Center(
       child:  Column(
        children: [
          SizedBox(width: 16),
           Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              spreadRadius: 4,
              offset: const Offset(1, 1),
          ),

      ],
    ),
             child: Row(
               children: [
                 CircleAvatar(
                   radius: 20,
                   backgroundImage: NetworkImage(
                     'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg',
                   ),
                 ),
                 SizedBox(width: 16),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       'John Doe',
                       style: TextStyle(
                         fontSize: 15,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                     SizedBox(height: 8),
                     Text(
                       'Flutter Developer',
                       style: TextStyle(
                         fontSize: 10,
                         color: Colors.grey[600],
                       ),
                     ),
                   ],
                 ),
               ],
             ),
    ),
        Text('Exercise 2: Tappable Grid',
        style: TextStyle(color: Colors.black,
        fontSize: 20),
        ),
        SizedBox(height: 20),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            padding: const EdgeInsets.all(16),
            children: List.generate(4, (index) {
              return GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Tapped on Item ${index + 1}')),
                  );
                  
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              );
            }),
          ),
        ),

        ],
       ),
      ),
    );
  }
}

