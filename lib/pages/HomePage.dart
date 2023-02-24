// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vibration/vibration.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(
          child: Text(
            "Vibration in Flutter",
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 200,
                child: ElevatedButton(
                  onPressed: (){
                    //HapticFeedback.vibrate();
                    //Vibration.vibrate(duration: 200);
                    Vibration.vibrate(
                      pattern: [500, 1000, 500, 2000, 400, 1000]
                    );
                  }, child: Text("Vibrate"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
