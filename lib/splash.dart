import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:todoapp/todo.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () { Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>todo()));});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircularProgressIndicator(color: Colors.teal,),

                  SizedBox(height: 10,),
                  // Text("Developed by github: deep22798"),
                ],
              ),
            ),
          ),
          Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset("assets/splash.json"),

                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Wings",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.teal),),
                    Text("ToDo ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                  ],
                )
              ],
            ),
          ),

        ],
      ),

    );
  }
}
