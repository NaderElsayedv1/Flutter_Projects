import 'package:flutter/material.dart';

class SliderSection extends StatefulWidget {
  const SliderSection({super.key});

  @override
  State<SliderSection> createState() => _SliderSectionState();
}

class _SliderSectionState extends State<SliderSection> {
  double heightValue = 50;

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
          Row(
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
            ],
          ),
          Slider(
            value: heightValue,
            min: 20,
            max: 250,
            activeColor: Colors.white,
            inactiveColor: Colors.grey,
            thumbColor: Color(0xffED0D54),
            onChanged: (newValue) {
              setState(() {
                heightValue = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
