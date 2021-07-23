import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  Color Hex_white = const Color(0xFFFFFFFF);
  Color Hex_Grey = const Color.fromRGBO(46, 46, 46, 1.0);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Hex_Grey,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(

              accountEmail: Text(''), // keep blank text because email is required
              accountName: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Hex_Grey,
                      child: Icon(Icons.account_circle, color: Hex_white, size: 90,),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text('Name Example',style: TextStyle(fontSize: 20)),
                        Text('Example@email.com'),
                      ],
                    ),
                  ),
                  // Container(
                  //   child: Icon(Icons.keyboard_arrow_right  , color: Colors.grey, size:30),
                  // ),
                ],
              ),
            ),
            Divider(color: Colors.grey),
            ListTile(
              leading: Icon(Icons.bookmarks_outlined, color: Hex_white),
              title: Text('Saved Notes',style: TextStyle(color:Hex_white)),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.download_rounded, color: Hex_white),
              title: Text('Downloaded Videos',style: TextStyle(color:Hex_white)),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart_rounded , color: Hex_white),
              title: Text('Purchase',style: TextStyle(color:Hex_white)),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.monetization_on_outlined, color: Hex_white),
              title: Text('Coins',style: TextStyle(color:Hex_white)),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.library_books_outlined,color: Hex_white),
              title: Text('Exams',style: TextStyle(color:Hex_white)),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.chat_bubble_outline, color: Hex_white),
              title: Text('Chats',style: TextStyle(color:Hex_white)),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.query_stats_rounded , color: Hex_white),
              title: Text('ScoreBoard',style: TextStyle(color:Hex_white)),
              onTap: () => null,
            ),
            Divider(color: Colors.grey),
            ListTile(
              leading: Icon(Icons.settings,color: Hex_white),
              title: Text('Settings',style: TextStyle(color:Hex_white)),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.person_add_rounded, color: Hex_white),
              title: Text('Referrals',style: TextStyle(color:Hex_white)),
            ),
            ListTile(
              leading: Icon(Icons.help_outline_rounded , color: Hex_white),
              title: Text('Help & feedback',style: TextStyle(color:Hex_white)),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.flip_camera_android_outlined , color: Hex_white),
              title: Text('Check for update',style: TextStyle(color:Hex_white)),
              onTap: () => null,
            ),
            ListTile(
              title: Text('Logout',style: TextStyle(color:Hex_white)),
              leading: Icon(Icons.power_settings_new_rounded , color: Hex_white),
              onTap: () => null,
            ),
          ],
        ),
      ),
    );
  }
}
