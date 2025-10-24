import 'package:bmi_calculator/home_screen/age_section/custom_age_weight_container.dart';
import 'package:flutter/material.dart';

class AgeWeightSelection extends StatelessWidget {
  const AgeWeightSelection({super.key, required this.onAgeChanged, required this.onWeightChanged});
final Function(int) onAgeChanged;
  final Function(int) onWeightChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AgeWeightContainer(
            mainText: 'WEIGHT',
            initialValue: 60,
                        onValueChanged: onWeightChanged,

          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: AgeWeightContainer(
            mainText: 'AGE',
            initialValue: 24,
                        onValueChanged: onAgeChanged,

          ),
        ),
      ],
    );
  }
}
