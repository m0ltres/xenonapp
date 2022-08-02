import 'package:flutter/material.dart';
import 'package:xenonapp/components/mobile_layout.dart';
import 'package:xenonapp/components/responsive_layout.dart';
//import 'package:xenonapp/components/rounded_button.dart';
import 'package:xenonapp/components/web_layout.dart';
import 'package:xenonapp/screens/home/griddashboard.dart';
//import 'package:xenonapp/screens/welcome/welcome_screen.dart';
//import 'package:xenonapp/services/authentication_service.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        webChild: WebLayout(
          dataWidget:
              const HomeScreenData(), 
        ),
        mobileChild: MobileLayout(
          dataWidget: const HomeScreenData(),
        ));
  }
}

class HomeScreenData extends StatelessWidget {
  const HomeScreenData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 900,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 110,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Welcome",
                      style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Home",
                      style:TextStyle(
                              color: Color(0xffa29aac),
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                IconButton(
                  alignment: Alignment.topCenter,
                  icon: Image.asset(
                    "assets/images/notification.png",
                    width: 80,
                    height: 80,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
         GridDashboard()
        ],
      ),
    );
  }
}