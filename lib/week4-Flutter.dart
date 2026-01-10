import 'package:flutter/material.dart';

void main () {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
   MyApp ({super.key});
  @override

  Widget build (BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Main',
      theme: ThemeData (primarySwatch: Colors.blue),
      home: ScaffoldW(), // use the stateful widget here
    );
  }
}
class ScaffoldW extends StatelessWidget{
  const ScaffoldW ({super.key});

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text ('Stesting'),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
       child: SingleChildScrollView(
         child: Column(
           children:<Widget>[
              Image.asset('image/q.png',
             ),
             Image.asset('image/w.png',
              ),
              SizedBox(height: 3.0),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
             ),
             const SizedBox(height: 20.0),
             const Text(
               "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                textAlign: TextAlign.center,
                textScaler: TextScaler.linear(3.5),
                strutStyle: StrutStyle(height: 1),
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.purpleAccent,
                  fontSize: 30,
                  color: Colors.red,
                  fontWeight: FontWeight.w900,
                ),
             )
           ]
         ),
       )
        // child:
      ),
    );
  }

}