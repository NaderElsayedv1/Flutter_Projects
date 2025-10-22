import 'package:flutter/material.dart';

class AgeWeightSelection extends StatefulWidget {
  const AgeWeightSelection({super.key});

  @override
  State<AgeWeightSelection> createState() => _AgeWeightSelectionState();
}

class _AgeWeightSelectionState extends State<AgeWeightSelection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AgeWeightContainer(
            mainText: 'WEIGHT',
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: AgeWeightContainer(
            mainText: 'AGE',
          ),
        ),
      ],
    );
  }
}

class AgeWeightContainer extends StatefulWidget {
  const AgeWeightContainer({super.key, required this.mainText});
  final String mainText;
  @override
  State<AgeWeightContainer> createState() => _AgeWeightContainerState();
}

class _AgeWeightContainerState extends State<AgeWeightContainer> {
  int valueNUmber = 0;
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
            widget.mainText,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          ),
          Text(
            valueNUmber.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    valueNUmber--;
                  });
                },

                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xff4B4E5F),
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    valueNUmber++;
                  });
                },

                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xff4B4E5F),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
