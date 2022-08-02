import 'package:flutter/material.dart';
import 'package:xenonapp/components/mobile_layout.dart';
import 'package:xenonapp/components/responsive_layout.dart';
import 'package:xenonapp/components/web_layout.dart';
import 'package:xenonapp/screens/home/contact_form.dart';
import 'package:xenonapp/screens/home/home_screen.dart';
import 'package:xenonapp/screens/home/griddashboard.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        webChild: WebLayout(
        

          dataWidget:
              ContactForm(), 
        ),
        mobileChild: MobileLayout(
          
          dataWidget: ContactForm(),
        ));
  }
}
