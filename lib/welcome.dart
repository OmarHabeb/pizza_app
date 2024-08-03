import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class welcome extends StatefulWidget {
  const welcome({super.key});

  @override
  State<welcome> createState() => _fristState();
}

class _fristState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("img/Animation.json",
                repeat: false,
                onLoaded: (c) => Future.delayed(c.duration, () {
                      Navigator.pushNamed(context, '/');
                    })),
                    Text("Welcome" ,style: TextStyle(color: Colors.red , fontWeight: FontWeight.bold , fontSize: 30),)
          ],
        ),
      
    );
  }
}
