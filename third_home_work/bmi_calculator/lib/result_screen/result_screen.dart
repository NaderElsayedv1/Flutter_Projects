import 'package:bmi_calculator/models/bmi_inputs_model.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final BmiInputsModel bmiInputsModel;

  const ResultScreen({
    super.key,
    required this.bmiInputsModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff03051A),
      appBar: AppBar(
        backgroundColor: Color(0xff04061D),
        title: const Text(
          'Your Result',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          margin: EdgeInsets.symmetric(vertical: 50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xff17172F),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Gender: ${bmiInputsModel.gender}',
                style: const TextStyle(color: Colors.white, fontSize: 24),
              ),
              Text(
                'Height: ${bmiInputsModel.height.toStringAsFixed(0)} cm',
                style: const TextStyle(color: Colors.white, fontSize: 24),
              ),
              Text(
                'Weight: ${bmiInputsModel.weight} kg',
                style: const TextStyle(color: Colors.white, fontSize: 24),
              ),
              Text(
                'Age: ${bmiInputsModel.age}',
                style: const TextStyle(color: Colors.white, fontSize: 24),
              ),
              const SizedBox(height: 20),
              Text(
                'Your BMI is: ${bmiInputsModel.bmiCaculate().toStringAsFixed(2)}',
                style: const TextStyle(
                  color: Colors.redAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
