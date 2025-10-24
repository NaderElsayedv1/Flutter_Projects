import 'package:bmi_calculator/result_screen/result_screen.dart';
import 'package:flutter/material.dart';


class Calculate_button extends StatelessWidget {
  final bool isMale;
  final double heightValue;
  final int weight;
  final int age;

  const Calculate_button({
    super.key,
    required this.isMale,
    required this.heightValue,
    required this.weight,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        double bmi = weight / ((heightValue / 100) * (heightValue / 100));
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(
              bmi: bmi,
              isMale: isMale,
              age: age,
            ),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          color: const Color(0xffED0D54),
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: const Text(
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
