import 'package:flutter/material.dart';

class GenderContainer extends StatelessWidget {
  const GenderContainer({
    super.key,
    required this.containerIcon,
    required this.containerText,
    required this.containerColor,
  });

  final IconData containerIcon;
  final String containerText;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: containerColor,

        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            containerIcon,
            color: Colors.white,
            size: 90,
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
