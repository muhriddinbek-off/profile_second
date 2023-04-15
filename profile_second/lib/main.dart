import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Widget bottom_part (String title, IconData Icons) {
  return Container(
    margin: EdgeInsets.all(10),
    child: Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          child: Icon(Icons, size: 38, color: Colors.white,),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
      ],
    ),
  );
}

void main () {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueAccent, title: Center(child: Text('Profile', style: TextStyle(fontSize: 30)))),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 280,
              child: Stack(children: [
                Container(
                  height: 280 - 90,
                  color: Colors.blueAccent,
                ),
                Positioned(
                  bottom: 0, 
                  left: 0, 
                  right: 0, 
                  child: 
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 270,top: 10),
                          child: Icon(Icons.edit_square, size: 30, color: Colors.blue.shade500),
                        ),
                        Image.asset('img/1.png', height: 90),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 7.0),
                          child: Text('Muhriddin Usanov', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                        ),
                        Text('muhriddinusanov7@gmail.com', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.blue.shade400)),
                      ],
                    ),
                    margin: EdgeInsets.only(right: 18, left: 18),
                    height: 240,
                    decoration: BoxDecoration(
                      color: Colors.white,
                       borderRadius: BorderRadius.all(Radius.circular(20)),
                       boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 7),
                          blurRadius: 30,
                          color: Colors.black54,
                        ),
                       ],
                       ),
                  ),
                ),
              ]),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 30),
              child: Column(
                children: [
                  bottom_part('Dashboart', Icons.grid_view),
                  bottom_part('Payment History', Icons.clean_hands),
                  bottom_part('Statics', Icons.bar_chart),
                  bottom_part('Reward', Icons.military_tech),
                  bottom_part('Logout', Icons.logout),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  ));
}