import 'package:bmi_calculator/models/bmi_inputs_model.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/result_screen/result_screen.dart';

class CalculateButton extends StatelessWidget {
  final BmiInputsModel bmiInputsModel; 

  const CalculateButton({super.key, required this.bmiInputsModel, });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(
              bmiInputsModel: bmiInputsModel,
            ),
          ),
        );
      },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        width: double.infinity,
        color: const Color(0xffED0D54),
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
