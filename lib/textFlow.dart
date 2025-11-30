import 'package:flutter/material.dart';

void main()=> runApp(MyApp());
final TextEditingController nameController = TextEditingController();
class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('TEXT FLOW IN FLUTTER',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.w900,
            ),
            ),
          ),
        ),
        body: Container(
          color: Colors.black12,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter your name',
                    icon: IconButton(onPressed: (){}, icon: Icon(Icons.person)),
                    iconColor: Colors.yellow,
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0),
                    ),
                    ),
                    suffixIcon: IconButton(
                       icon:  Icon(Icons.clear),
                        onPressed: (){ nameController.clearComposing(); },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}