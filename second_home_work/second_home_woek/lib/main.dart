import 'package:flutter/material.dart';
import 'package:second_home_woek/buttonsSection.dart';
import 'package:second_home_woek/featuresSection.dart';
import 'package:second_home_woek/helloSection.dart';
import 'package:second_home_woek/quickStatsSection.dart';

main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffFEF7FF),
        body: Padding(
          padding: const EdgeInsets.all(7),
          child: Column(
            spacing: 10,
            children: [
              SizedBox(
                height: 25,
              ),
              HelloSection(),
              QuickStatsSection(),
              Featuressection(),
              SizedBox(height: 75),
              Buttonssection(),
            ],
          ),
        ),
      ),
    );
  }
}
