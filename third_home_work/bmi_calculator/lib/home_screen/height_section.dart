import 'package:bmi_calculator/models/bmi_inputs_model.dart';
import 'package:flutter/material.dart';

class HeightSection extends StatefulWidget {
  const HeightSection({
    super.key,
    required this.bmiInputsModel,
  });
  final BmiInputsModel bmiInputsModel;
  @override
  State<HeightSection> createState() => _HeightSectionState();
}

class _HeightSectionState extends State<HeightSection> {
  double heightValue = 170;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff17172F),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Text(
            'HEIGHT',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          ),

          //height text
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                heightValue.toStringAsFixed(0).toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                'cm',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
              //cm text
            ],
          ),
          Slider(
            value: heightValue,
            min: 20,
            max: 250,
            activeColor: Colors.white,
            inactiveColor: Colors.grey,
            thumbColor: Color(0xffED0D54),
            onChanged: (value) {
              setState(() {
                heightValue = value;
                widget.bmiInputsModel.height = heightValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
