import 'package:flutter/material.dart';

class ScaffW extends StatefulWidget{
  const ScaffW({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState()=>_ScaffW();
}
class _ScaffW extends State<ScaffW>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Row(
              children: [
                IconButton(onPressed: (){},
                    icon: Icon(Icons.keyboard_backspace, color: Colors.white, size: 30,)
                ),
             Text('Hello world',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
              ),
            ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      GestureDetector(
                    onTap: () {},
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.search, color: Colors.white, size: 30),
                        ),
                ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.menu, color: Colors.white, size: 30),
      ),
                    ],
                  ),
                ),
              ],
          ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('Hello World Flutter',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                // foreground: Paint()
                //   ..color= Colors.black
                //   ..style= PaintingStyle.stroke
                //   ..strokeWidth= 2.0,
                // fontWeight: FontWeight.w900,អក្សរ ដិត
              ),

            ),
          ),

        ),
        backgroundColor: const Color(0x88FF99FF),
      ),

    );
  }
}

