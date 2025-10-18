import 'package:flutter/material.dart';

class Buttonssection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      
      children: [
        ButtonContainer(
          buttonColor: Color(0xff2397F0),
          buttonText: 'Settings',
        ),
        ButtonContainer(
          buttonColor: Color(0xffFF9505),
          buttonText: 'Profil',
        ),
      ],
    );
  }
}

class ButtonContainer extends StatelessWidget {
  const ButtonContainer({
    super.key,
    required this.buttonColor,
    required this.buttonText,
  });
  final Color buttonColor;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 45,
      width: 160,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          color: Colors.white,
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
