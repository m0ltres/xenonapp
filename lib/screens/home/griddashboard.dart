
import 'package:flutter/material.dart';
import 'package:xenonapp/screens/home/contact_screen.dart';
import 'package:xenonapp/screens/signin/signin_screen.dart';
//import 'package:google_fonts/google_fonts.dart';

class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "Calendar",
      img: "assets/images/calendar.png" );

  Items item2 = new Items(
    title: "Courses",
    
    img: "assets/images/courses.png",
  );
  Items item3 = new Items(
    title: "Locations",
   
    img: "assets/images/map.png",
  );
  Items item4 = new Items(
    title: "Contact Us",
   
    img: "assets/images/contact-us.png",
  );
  Items item5 = new Items(
    title: "To do",
   
    img: "assets/images/todo.png",
  );
  Items item6 = new Items(
    title: "Settings",
    // subtitle: "",
    // event: "2 Items",
    img: "assets/images/setting.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    //var color = 0xff453658;
    var color = 0xffd2f092;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return GestureDetector(
              onTap:() => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ContactScreen()),
            ),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(color), borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      data.img,
                      width: 42,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      data.title,
                      style:  TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    // Text(
                    //   data.subtitle,
                    //   style:  TextStyle(
                    //           color: Colors.white38,
                    //           fontSize: 10,
                    //           fontWeight: FontWeight.w600),
                    // ),
                    SizedBox(
                      height: 14,
                    ),
                    // Text(
                    //   data.event,
                    //   style: TextStyle(
                    //           color: Colors.white70,
                    //           fontSize: 11,
                    //           fontWeight: FontWeight.w600),
                    // ),
                  ],
                ),
                
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
 // String subtitle;
 // String event;
  String img;
  Items({required this.title, //required this.subtitle,required this.event, 
  required this.img});
}
