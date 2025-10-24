import 'package:bmi_calculator/home_screen/age_section/age_weight_selection_section.dart';
import 'package:bmi_calculator/home_screen/calculate_button.dart';
import 'package:bmi_calculator/home_screen/gender_section/gender_selection_section.dart';
import 'package:bmi_calculator/home_screen/height_section.dart';
import 'package:flutter/material.dart';

main() {
  runApp(BmiCalculator());
}

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  bool isMale = true;
  double heightValue = 170;
  int weight = 60;
  int age = 24;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff03051A),
        appBar: AppBar(
          backgroundColor: Color(0xff04061D),
          title: Text(
            'BMI CALCULATOR',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                child: GenderSelection(
                  isMaleSelected: isMale,
                  onGenderChanged: (bool male) {
                    setState(() {
                      isMale = male;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Expanded(
                child: HeightSection(
                  heightValue: heightValue,
                  onHeightChanged: (double newHeight) {
                    setState(() {
                      heightValue = newHeight;
                    });
                  },
                ),
              ),

              SizedBox(
                height: 25,
              ),
              Expanded(
                child: AgeWeightSelection(
                  onAgeChanged: (int newAge) {
                    setState(() {
                      age = newAge;
                    });
                  },
                  onWeightChanged: (int newWeight) {
                    setState(() {
                      weight = newWeight;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Calculate_button(
                isMale: isMale,
                heightValue: heightValue,
                weight: weight,
                age: age,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
