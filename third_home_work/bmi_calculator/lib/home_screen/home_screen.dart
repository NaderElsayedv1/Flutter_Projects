import 'package:bmi_calculator/home_screen/age_weight_selection_section.dart';
import 'package:bmi_calculator/home_screen/calculate_button.dart';
import 'package:bmi_calculator/home_screen/gender_selection_section.dart';
import 'package:bmi_calculator/home_screen/height_section.dart';
import 'package:bmi_calculator/models/bmi_inputs_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final BmiInputsModel bmiInputsModel = BmiInputsModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff03051A),
      appBar: AppBar(
        backgroundColor: Color(0xff04061D),
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: GenderSelection(
                bmiInputsModel: bmiInputsModel,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: HeightSection(
                bmiInputsModel: bmiInputsModel,
              ),
            ),
            SizedBox(
              height: 16,
            ),

            Expanded(
              child: AgeWeightSelection(
                bmiInputsModel: bmiInputsModel,
              ),
            ),
            SizedBox(
              height: 16,
            ),

            CalculateButton(bmiInputsModel: bmiInputsModel),
          ],
        ),
      ),
    );
  }
}
