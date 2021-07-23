import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: '2E2E2E'.toColor3(),
      child: Column(
        children: [
          SizedBox(height: 15),
          Text(
              'Why Choose The Future Classroom?',
            style: GoogleFonts.inter(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.white
            )
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left:25,right: 25),
            child: Container(
              child: Image.asset('assets/images/add1_2.png',)
            ),
          ),
          SizedBox(height: 10),
          Divider(color: Colors.grey, height: 1,),
          SizedBox(height: 10),
          Container(
            height: 70,
            // color: Colors.amber,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 1,right: 1),
                itemCount: 7,
                itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.only(right: 15,left: 15, bottom: 20),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: "596D78".toColor3()
                    ),
                  );
                }
            ),
          ),
          Divider(color: Colors.grey, height: 1,),
          Padding(
            padding: const EdgeInsets.only(left: 16,right: 16,bottom: 13,top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Find Your Exam",
                    style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                    )
                ),
                Text("View All", style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
          Container(
            color: Colors.pink,
            height: 123,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 16,right: 16),
                itemCount: 5,
                itemBuilder: (context,index){
                  return OperationCard();
                }
            ),
          ),
        ],
      ),
    );
  }
}

extension ColorExtension on String {
  toColor3() {
    var hexColor = this.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}


class OperationCard extends StatefulWidget {
  final String operation = "5";
  final String selectedIcon = "5";
  final String unselectedIcon ="5";
  final bool isSelected = true;


  // OperationCard({this.operation, this.selectedIcon, this.isSelected, this.unselectedIcon})

  @override
  _OperationCardState createState() => _OperationCardState();
}

class _OperationCardState extends State<OperationCard> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
