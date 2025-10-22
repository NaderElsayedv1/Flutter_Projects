import 'package:bmi_calculator/home_screen/age_weight_selection_section.dart';
import 'package:bmi_calculator/home_screen/calculate_button.dart';
import 'package:bmi_calculator/home_screen/gender_selection_section.dart';
import 'package:bmi_calculator/home_screen/slider_section.dart';
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
                child: GenderSelection(),
              ),
              SizedBox(
                height: 25,
              ),
              Expanded(
                child: SliderSection(),
              ),
              SizedBox(
                height: 25,
              ),
              Expanded(
                child: AgeWeightSelection(),
              ),
              SizedBox(
                height: 25,
              ),
              CalculateButton(),
            ],
          ),
        ),
      ),
    );
  }
}
