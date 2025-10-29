import 'package:bmi_calculator/components/custom_age_weight_container.dart';
import 'package:bmi_calculator/models/bmi_inputs_model.dart';
import 'package:flutter/material.dart';

class AgeWeightSelection extends StatelessWidget {
  const AgeWeightSelection({
    super.key,
    required this.bmiInputsModel,
  });
  final BmiInputsModel bmiInputsModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AgeWeightContainer(
            mainText: 'WEIGHT',
            initialValue: 60,
            onValueChanged: (valueNumber) {
              bmiInputsModel.weight = valueNumber;
            },
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: AgeWeightContainer(
            mainText: 'AGE',
            initialValue: 24,
            onValueChanged: (valueNumber) {
              bmiInputsModel.age = valueNumber;
            },
          ),
        ),
      ],
    );
  }
}
