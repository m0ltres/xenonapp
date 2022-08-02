import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xenonapp/screens/signin/signin_screen.dart';
import 'package:xenonapp/services/authentication_service.dart';
import 'package:xenonapp/utils/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AuthenticationService.intializeService();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
