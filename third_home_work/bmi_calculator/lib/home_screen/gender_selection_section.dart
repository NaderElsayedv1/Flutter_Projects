import 'package:bmi_calculator/components/gender_container.dart';
import 'package:bmi_calculator/models/bmi_inputs_model.dart';
import 'package:flutter/material.dart';

class GenderSelection extends StatefulWidget {
  const GenderSelection({
    super.key,
    required this.bmiInputsModel,
  });
  final BmiInputsModel bmiInputsModel;
  @override
  State<GenderSelection> createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  bool isMaleSelected = true;
  final Color active = Color(0xff090B24);
  final Color inactive = Color(0xff17172F);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isMaleSelected = true;
                widget.bmiInputsModel.gender = 'Male';
              });
            },
            child: GenderContainer(
              containerIcon: Icons.male_rounded,
              containerText: 'MALE',
              containerColor: isMaleSelected ? active : inactive,
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isMaleSelected = false;
                widget.bmiInputsModel.gender = 'Female';
              });
            },
            child: GenderContainer(
              containerIcon: Icons.female_rounded,
              containerText: 'FEMALE',
              containerColor: isMaleSelected ? inactive : active,
            ),
          ),
        ),
      ],
    );
  }
}
