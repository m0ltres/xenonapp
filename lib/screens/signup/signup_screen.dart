import 'package:flutter/material.dart';
import 'package:xenonapp/components/mobile_layout.dart';
import 'package:xenonapp/components/responsive_layout.dart';
import 'package:xenonapp/components/web_layout.dart';
import 'package:xenonapp/screens/signup/signup_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        webChild: WebLayout(
        

          dataWidget:
              SignUpForm(), 
        ),
        mobileChild: MobileLayout(
          
          dataWidget: SignUpForm(),
        ));
  }
}
