import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double bmi;
  final bool isMale;
  final int age;

  const ResultScreen({
    super.key,
    required this.bmi,
    required this.isMale,
    required this.age,
  });

  String get resultText {
    if (bmi < 18.5) return 'Underweight';
    if (bmi < 25) return 'Normal';
    if (bmi < 30) return 'Overweight';
    return 'Obese';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 10, 44),
      appBar: AppBar(
        backgroundColor: const Color(0xff04061D),
        title: const Text('BMI RESULT', style: TextStyle(color: Colors.white)),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isMale ? 'Gender: Male' : 'Gender: Female',
              style: const TextStyle(color: Colors.grey, fontSize: 22),
            ),
            const SizedBox(height: 10),
            Text(
              'Age: $age',
              style: const TextStyle(color: Colors.grey, fontSize: 22),
            ),
            const SizedBox(height: 20),
            Text(
              'BMI: ${bmi.toStringAsFixed(1)}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              resultText,
              style: const TextStyle(
                color: Colors.pinkAccent,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
