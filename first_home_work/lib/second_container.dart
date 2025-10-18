import 'package:flutter/material.dart';

class Second_Container extends StatelessWidget {
  const Second_Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              First_Row_Containers(
                color: Color(0xffA3D4A6),
              ),
              SizedBox(height: 10),
              First_Row_Containers(
                color: Color(0xffA3D4A6),
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 110,
            width: 83,
            color: Color(0xffFFCC80),
          ),
          SizedBox(
            width: 8,
          ),
          Container(
            height: 110,
            width: 83,
            color: Color(0xffFFCC80),
          ),
        ],
      ),
    );
  }
}

class First_Row_Containers extends StatelessWidget {
  final Color color;

  First_Row_Containers({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(height: 50, width: 150, color: color);
  }
}
