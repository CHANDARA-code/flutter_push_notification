import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({Key? key}): super(key: key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}) : super(key: key);
  @override
 State<HomeScreen> createState ()=> _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromRGBO(235, 235, 235, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(54, 72, 177, 1.0),
        title: Text('Student Exercise - Expanded',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
      body: SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.only(
             right: 0,
              left: 16,
              top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('1.Profile Card',
            style: TextStyle(
              color: Color.fromRGBO(54, 72, 177, 1.0),
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 10,),
            Stack(
              children: [
                Container(
                  height:80,
                  width: 330,
                  decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(
                        0,
                        2,
                      ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 10,
                  right: 0,
                  top: 10,
                  child: Row(
                  children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                 'https://github.com/Samnang-Sokhorm/image/blob/main/image_2024-11-04_16-18-12.png?raw=true',
                 ),
               ),
                    SizedBox(width: 15,),
                    Column(
                      children: [
                        Text('Yong Hunter',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        SizedBox(height: 4,),
                        Row(
                          children: [
                        Icon(Icons.pin_drop_rounded,
                          color: Colors.grey,
                          size: 15,
                        ),
                         Text('San Francisco, CA',
                        style: TextStyle(fontSize: 10,
                        color: Colors.grey,
                        ),
                        ),
                            ],
                        ),
                      ],
                    ),
                  ],
                ),
                    ),
                    ],
                ),
            SizedBox(height: 30,),
            Text('2.Tappable Grid',
              style: TextStyle(
                color: Color.fromRGBO(54, 72, 177, 1.0),
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Stack(
            //   children: [
            //     Positioned.fill(
            GridView.count(
              padding: const EdgeInsets.all(10),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              primary: false,
              childAspectRatio: 1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://imgs.search.brave.com/1sF-KM_ckRMFCRQ95CwOL2W-Q1IITVRWEr5qcDoDtgs/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9jZG4u/cGl4YWJheS5jb20v/cGhvdG8vMjAxNS8w/OS8yOS8wNi8yOS9o/b21lLTk2MzM0N182/NDAuanBn'
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 9,
                        width: 9,
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text('Home',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://imgs.search.brave.com/krvN4S4--tlj_NuhKISl_iBdRFJirDL8ye5aQd4MnZw/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9oaXBz/LmhlYXJzdGFwcHMu/Y29tL2htZy1wcm9k/L2ltYWdlcy8yMDIy/LWJtdy14NC14ZHJp/dmUzMGktMjUwLTE2/NTQ2ODk3NjkuanBn/P3c9NzY4JndpZHRo/PTc2OCZxPTc1JmZv/cm1hdD13ZWJw'
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 9,
                        width: 9,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text('Car',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),


                Container(
                  padding: const EdgeInsets.all(8),
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://imgs.search.brave.com/rlzRGdJJV3sKiJOuzHkBtRGPMHay2f30hDVMkyfNerE/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9jZG4u/cGl4YWJheS5jb20v/cGhvdG8vMjAyMC8w/NS8yNy8xNy8wOC9i/dWlsZGluZy01MjI4/MTAxXzY0MC5qcGc',
                        ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 9,
                        width: 9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text('Company',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://imgs.search.brave.com/knX3_6dtgK9BbVPtix6PmNKBtDVEZGMi-nIwIzixoL4/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9hczEu/ZnRjZG4ubmV0L2pw/Zy8wMi83Mi82Mi82/Mi8yMjBfRl8yNzI2/MjYyNTFfQ1V1Um1q/MXBmWnlTdjduVHR2/VVBBT3NDdHBUMHdH/N3ouanBn',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 9,
                        width: 9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.orange,
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text('Garden',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Text('3. Stack Banner',
              style: TextStyle(
                color: Color.fromRGBO(54, 72, 177, 1.0),
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5,),
            Stack(
              children: [
                Container(
                  height:150,
                  width: 330,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage('https://imgs.search.brave.com/-Ln8eDBEItPfjHwAcB8k5Fa6sxBnuPdKGh-7XHi9pdM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzA3LzAyLzM4LzI1/LzM2MF9GXzcwMjM4/MjU5Ml9qaE13UnNs/aXE0ZldENlBzY0NE/OFFFWU5xa3FpUm56/ay5qcGc',
                        ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 0,
                  child: Container(
                  height: 25,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(20),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text('50% OFF',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      fontStyle: FontStyle.normal,
                    ),
                    ),
                    ),
                ),
                Positioned.fill(
                  top: 40,
                  child: Center(
                  child: Column(
                  children: [
                Text('SUMMER SALE',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                    Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      alignment: Alignment.center,
                      child: Text('Shop Now',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                      ),
                    ),
        ],
                  ),
      ),
      ),
              ],
            ),
            SizedBox(height: 40,),
            Text('4. Horizontal List (Storise)',
              style: TextStyle(
                color: Color.fromRGBO(54, 72, 177, 1.0),
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
            child:SizedBox(
              height: 90, // REQUIRED
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 4,
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 25,
                      child: Center(
                        child: Icon(
                          CupertinoIcons.plus,
                          size: 20.0,
                          color: Colors.blueAccent,
                        )
                      ),
                      backgroundColor: Colors.white24,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.pink, // stroke color
                        width: 2,
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                        'https://imgs.search.brave.com/KB1ijo5cGbAub_3gvtOA_ymkltuEHkxhjwnumhJmkvI/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wMjMv/MTI0Lzc3NC9zbWFs/bC9wb3J0cmFpdC1v/Zi1hLWhhcHB5LWdp/cmwtd2l0aC1hLXNt/aWxlLW5ldXJhbC1u/ZXR3b3JrLWFpLWdl/bmVyYXRlZC1waG90/by5qcGc',
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.pink, // stroke color
                        width: 2,
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                        'https://imgs.search.brave.com/TKkxLjpnlPPL-2XmgwQwShW3mmhkPHK9-5iN0RvtpxA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzE4LzIzLzA0Lzk1/LzM2MF9GXzE4MjMw/NDk1MjdfMHMwOUJZ/d1FMdWZ1S1NidTlJ/THdBT3hKOUczNTBt/NmkuanBn',
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                         color: Colors.pink, // stroke color
                        width: 2,
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                        'https://imgs.search.brave.com/0YoupP2to7LbEEXZiTZ6Qh6E-o3kvyhi8k0_mQGS9Y8/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTU1/Mzk0OTI3L3Bob3Rv/L3JlYWwteW91bmct/d29tYW4uanBnP3M9/NjEyeDYxMiZ3PTAm/az0yMCZjPWl4ZVlw/U1pQTnZQaEtLOWp2/Z0lOa2RZcThUdGpa/OG1VLTA1NklVMlVN/MW89',
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.pink, // stroke color
                        width: 2,
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                        'https://imgs.search.brave.com/vdiV75xJuS8rkGOOUw1Ujqbo5mZKCo9w3U73oI4cwSY/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzE3LzUyLzc3LzM2/LzM2MF9GXzE3NTI3/NzM2NTRfMlRENlFM/UTNrSlA5b3lVc1dm/S2I3dlZEWWVkRHJx/MFouanBn',
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.pink, // stroke color
                        width: 2,
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                        'https://imgs.search.brave.com/I0bTlD_SAWdFWqZLlI50nuczFMgelyRm8swgvrtnUJo/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wMzAv/MzU0LzI1MS9zbWFs/bC9oYWxmLWZhY2Ut/Y3V0ZS1naXJsLXBl/cmZlY3Qtc21pbGUt/YWktZ2VuZXJhdGVk/LXBob3RvLmpwZw',
                      ),
                    ),
                  ),

                ],
              ),
            ),
            ),
            SizedBox(height: 20,),
            Text('5. Chat Bubbles',
              style: TextStyle(
                color: Color.fromRGBO(54, 72, 177, 1.0),
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  ChatBubble(
                    message: "Hey, how are you?",
                    isMe: false,
                  ),
                  ChatBubble(
                    message: "I'm good! What about you? ",
                    isMe: true,
                  ),
                  ChatBubble(
                    message: "Same here 😄",
                    isMe: false,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),

            Text('6. Social Post Card',
              style: TextStyle(
                color: Color.fromRGBO(54, 72, 177, 1.0),
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10,),
        Stack(
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                            'https://github.com/Samnang-Sokhorm/image/blob/main/image_2024-11-04_16-18-12.png?raw=true',
                          ),
                        ),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Travel Daily',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '2 hrs ago',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Icon(Icons.more_vert),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: Image.network(
                      'https://imgs.search.brave.com/O8Oi4eySE9b7KGKNCn-JCbQCuW_lomuJ7v0BXPcgf38/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvOTQ5/ODI3MDA2L3Bob3Rv/L2Nsb3Vkcy1kcmlm/dC1hbWlkLXJvY2t5/LWNsaWZmcy5qcGc_/cz02MTJ4NjEyJnc9/MCZrPTIwJmM9Y3E4/U3NHWUpQSmM2NHNN/YmhfMzBvY1JXakhx/RU14b2NaalIyNG5a/cDJVMD0',
                      fit: BoxFit.cover,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    child: Row(
                      children: const [
                        Icon(CupertinoIcons.heart, size: 20),
                        SizedBox(width: 6),
                        Text('Like'),
                        SizedBox(width: 20),
                        Icon(Icons.mode_comment_outlined, size: 20),
                        SizedBox(width: 6),
                        Text('Comment'),
                        Spacer(),
                        Icon(CupertinoIcons.bookmark),
                      ],
                    ),
                  ),

                  // 🔹 CAPTION TEXT
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    child: Text(
                      'Just arrived in paradise! The water is absolutely crystal clear. '
                          '#travel #vacation',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),

                  const SizedBox(height: 12),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 200,),
        ],
      ),
      ),
      ),
    );
  }
}
class ChatBubble extends StatelessWidget{
  final String message;
  final bool isMe;

  const ChatBubble({
    super.key,
    required this.message,
    required this.isMe,
});
  @override
  Widget build(BuildContext context){
   return Align(
     alignment: isMe? Alignment.centerRight : Alignment.centerLeft,
    child: Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
      constraints: const BoxConstraints(maxWidth: 250),
      decoration: BoxDecoration(
        color: isMe? Colors.blueAccent : Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(16),
          topRight: const Radius.circular(16),
          bottomLeft: isMe
            ? const Radius.circular(16)
              : const Radius.circular(0),
          bottomRight: isMe
            ? Radius.circular(0)
              : Radius.circular(16)
        ),
      ),
      child: Text(
        message,
        style: TextStyle(
          color: isMe? Colors.white : Colors.black,
          fontSize: 14,
        ),
      ),
    ),
   );
  }
}