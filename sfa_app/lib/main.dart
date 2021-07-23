import 'package:flutter/material.dart';
import 'package:sfa_app/NavBar.dart';
import 'package:sfa_app/BottomNavBar.dart';
import 'package:sfa_app/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Future Classroom',
      theme: ThemeData(
        primaryColor: '2E2E2E'.toColor(),
      ),
      home:  RootPage(),
    );
  }

}

class RootPage extends StatefulWidget {
  RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: Transform(
            transform: Matrix4.translationValues(-20, 0.0, 0.0),
            child: Image.asset('assets/images/TittleLogo2.png',height: 20),
          ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications )),
            IconButton(onPressed: (){}, icon: Icon(Icons.help_outline ))
          ],


        ),
        body:  Column(
          children: [
            Divider(color: Colors.grey, height: .3),
            Expanded(
                child: HomePage()
            ),
            Divider(color: Colors.grey, height: 1,),
            BottomNavBar()
          ],
        )
      ),
    );
  }
}

extension ColorExtension on String {
  toColor() {
    var hexColor = this.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}
