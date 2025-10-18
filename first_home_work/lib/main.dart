import 'package:first_home_work/first3_containers.dart';
import 'package:first_home_work/fourth_container.dart';
import 'package:first_home_work/second_container.dart';
import 'package:first_home_work/third_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(13),

          child: Column(
            children: [
              First3_Containers(),
              Second_Container(),
              SizedBox(
                height: 15,
              ),
              Third_Container(),
              SizedBox(
                height: 15,
              ),
              Fourth_Container(),
            ],
          ),
        ),
      ),
    );
  }
}
