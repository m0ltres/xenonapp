import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lottie/lottie.dart';
import 'package:xenonapp/main.dart';
import 'package:xenonapp/screens/signin/signin_screen.dart';
class Splash extends StatefulWidget{
 const Splash({Key? key}): super(key: key);

@override
_splashState createState()=> _splashState();
}

class _splashState extends State<Splash>{

@override
void initState(){

  Future.delayed(const Duration(seconds: 7),(){
    Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>SignInScreen()) );
  });
  super.initState();
}




 @override 
 Widget build(BuildContext context){
   return Scaffold(
     backgroundColor: Color.fromARGB(255, 220, 237, 186),
    body: Container(alignment: Alignment.center,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,

      children: [

        Text("XENON INSTITUTE", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.black),),
        
        SizedBox(height: 500, width: 500,child: Lottie.asset("assets/images/SPLASH.json"),),
        SizedBox(height: 20),
        
        
      Text("SUBMITTED BY: KINJAL AGRAWAL", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.black),),
      Text("\n EMAIL ID: 2019pcecskinjal79@poornima.org", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.black),),
      ],
      ),

    ),
   );
 }
}


