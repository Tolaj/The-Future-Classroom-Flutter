import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  Color Hex_white = const Color(0xFFFFFFFF);
  Color Hex_Grey = const Color.fromRGBO(46, 46, 46, 1.0);

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 80,
          color: '2E2E2E'.toColor2(),
          child: Row(
            children: [
              Expanded(
                child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.home_filled, color: "FFFFFF".toColor2(),size: 25,) ),
                        Text('Home',style: TextStyle(color:"FFFFFF".toColor2())),
                      ],
                    )
                ),
              ),
              Expanded(
                  child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.videocam, color: "989898".toColor2(),size: 25,)),
                          Text('Courses',style: TextStyle(color:"989898".toColor2())),
                        ],
                      )
                  )
              ),
              Expanded(
                  child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.chat_bubble , color: "989898".toColor2(),size: 25,)),
                          Text('Live Chat',style: TextStyle(color:"989898".toColor2())),
                        ],
                      )
                  )
              ),
              Expanded(
                  child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.phone , color: "989898".toColor2(),size: 25,)),
                          Text('Call Us',style: TextStyle(color:"989898".toColor2())),
                        ],
                      )
                  )
              ),
              Expanded(
                  child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.account_circle, color: "989898".toColor2(),size: 25,)),
                          Text('Profile',style: TextStyle(color:"989898".toColor2())),
                        ],
                      )
                  )
              ),
            ],
          ),
        );

  }
}

extension ColorExtension on String {
  toColor2() {
    var hexColor2 = this.replaceAll("#", "");
    if (hexColor2.length == 6) {
      hexColor2 = "FF" + hexColor2;
    }
    if (hexColor2.length == 8) {
      return Color(int.parse("0x$hexColor2"));
    }
  }
}