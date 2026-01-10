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
      home: const ExceriseScreen(),
    );
  }
}
class ExceriseScreen extends StatelessWidget {
  const ExceriseScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ex 1: Socal Media Post',
        style: TextStyle(color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w500,
        ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Row(
        children: [
        Expanded(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                ),
              ),
               SizedBox(width: 5,),
               Column(
                 children: [
               Text('FlutterDev',
               style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
               ),
      SizedBox(height: 4),
                Text('2 hours ago',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
                ),
      ],
      ),

            ],
          ),
        ),
      ),
      ],
      ),
        Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
           SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("❤️ Like"),
                Text("💬 Comment"),
                Text("🔄 Share"),
              ],
            )
          ],
   ),
      ),
    );
  }
}