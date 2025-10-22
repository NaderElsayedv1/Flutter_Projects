import 'package:flutter/material.dart';

class GenderSelection extends StatefulWidget {
  const GenderSelection({super.key});

  @override
  State<GenderSelection> createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  Gender? selectGender;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectGender = Gender.male;
              });
            },
            child: GenderContainer(
              containerIcon: Icons.male_rounded,
              containerText: 'MALE',
              isSelect: selectGender == Gender.male,
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
                selectGender = Gender.female;
              });
            },
            child: GenderContainer(
              containerIcon: Icons.female_rounded,
              containerText: 'FEMALE',
              isSelect: selectGender == Gender.female,
            ),
          ),
        ),
      ],
    );
  }
}

class GenderContainer extends StatelessWidget {
  const GenderContainer({
    super.key,
    required this.containerIcon,
    required this.containerText,
    required this.isSelect,
  });

  final IconData containerIcon;
  final String containerText;
  final bool isSelect;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelect ? Color(0xff090B24) : Color(0xff17172F),

        //color: Color(0xff17172F),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            containerIcon,
            color: Colors.white,
            size: 90,
            fontWeight: FontWeight.w600,
          ),
          Text(
            containerText,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

enum Gender { male, female }
