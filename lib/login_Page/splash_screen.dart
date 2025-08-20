// import 'dart:nativewrappers/_internal/vm/lib/async_patch.dart' hide Timer;
import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
     Navigator.pushReplacementNamed(context, '/login');
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("asset/paper.png",width: 200, height: 200,),
        
        
        Text("My Siswa Ku",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.amberAccent),),
      ],
    ),),);
  }
} 