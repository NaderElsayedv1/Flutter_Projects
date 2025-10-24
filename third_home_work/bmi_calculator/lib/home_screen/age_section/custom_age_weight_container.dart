import 'package:flutter/material.dart';

class AgeWeightContainer extends StatefulWidget {
  const AgeWeightContainer({
    super.key,
    required this.mainText, required this.initialValue, required this.onValueChanged,
  });
  final String mainText;
  final int initialValue;
    final Function(int) onValueChanged;


  @override
  State<AgeWeightContainer> createState() => _AgeWeightContainerState();
}

class _AgeWeightContainerState extends State<AgeWeightContainer> {
  int valueNumber = 0;
  void updateValue(int newValue) {
    setState(() {
      valueNumber = newValue;
    });
    widget.onValueChanged(newValue);
  }

  @override
  Widget build(BuildContext context) {
    if (valueNumber == 0)
    {
      valueNumber = widget.initialValue;
    }
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
            valueNumber.toString(),
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
                    if (valueNumber > 0) {
                      valueNumber--;
                    }
                  });
                },
                child: CustomCircleAvatar(avatarIcon: Icons.remove),
              ),
              SizedBox(
                width: 12,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    valueNumber++;
                  });
                },
                child: CustomCircleAvatar(
                  avatarIcon: Icons.add,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    super.key,
    required this.avatarIcon,
  });
  final IconData avatarIcon;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: Color(0xff4B4E5F),
      child: Icon(
        avatarIcon,
        color: Colors.white,
        size: 40,
      ),
    );
  }
}
