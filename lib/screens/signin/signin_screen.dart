import 'package:flutter/material.dart';
import 'package:xenonapp/components/mobile_layout.dart';
import 'package:xenonapp/components/responsive_layout.dart';
import 'package:xenonapp/components/web_layout.dart';
import 'package:xenonapp/screens/signin/login_form.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        webChild: WebLayout(
          // imageWidget: Image.asset(
          //   "assets/images/login.png",
          //   width: 150,
          // ),
          dataWidget:
              LoginForm(), //Lets create widget for login form & use here
        ),
        mobileChild: MobileLayout(
          // imageWidget: Image.asset(
          //   "assets/images/login.png",
          //   width: 75,
          // ),
          dataWidget: LoginForm(),
        ));
  }
}
