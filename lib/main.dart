import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:mysiswaku/login_page/login.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Column(
          children: [
            SizedBox(
              width: 150,
              height: 150,
              child: Lottie.asset('asset/loader.json'),
            ),

            Text("MySiswaKu",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
          ],
        ),
        nextScreen: const Login(),
        splashIconSize: 200,
        backgroundColor: Colors.white,
        duration: 3000, // durasi 3 detik
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}
