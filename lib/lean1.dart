import 'package:flutter/material.dart ';
void main()=> runApp(MyApp());
class MyApp extends StatefulWidget{
  @override
  _MyAppStates createState()=>
      _MyAppStates();
}
class _MyAppStates extends State<MyApp>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('FAT',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
              ),

            ),
          ),
          backgroundColor: Colors.brown,
        ),
        body: Container(

          color: Colors.purpleAccent,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(),
          ),
        ),
        floatingActionButton: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
        FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add,
            color: Colors.black,
            size: 30.0,
          ),
        ),
            SizedBox(height: 10.0,)
      ],
          ),

          ),
        backgroundColor: Colors.yellow,
      ),
    );
  }
}