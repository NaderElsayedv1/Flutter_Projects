import 'package:bmi_calculator/result_screen/result_screen.dart';
import 'package:flutter/material.dart';

//import 'package:bmi_calculator/home_screen/age_weight_selection_section.dart';
//import 'package:bmi_calculator/home_screen/gender_selection_section.dart';
//import 'package:bmi_calculator/home_screen/slider_section.dart';
class CalculateButton extends StatefulWidget {
  const CalculateButton({super.key});

  @override
  State<CalculateButton> createState() => _CalculateButtonState();
}

class _CalculateButtonState extends State<CalculateButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(),
          ),
        );
      },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        width: double.infinity,
        color: Color(0xffED0D54),
        child: Text(
          'CALCULATE',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
