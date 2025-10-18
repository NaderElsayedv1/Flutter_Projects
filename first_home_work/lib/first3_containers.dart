import 'package:flutter/material.dart';

class First3_Containers extends StatelessWidget {
  const First3_Containers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          color: Color(0xffE4F2FD),
        ),
    
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15),
              height: 25,
              width: 25,
              color: Color(0xffE0E0E0),
            ),
            Container(
              margin: EdgeInsets.only(left: 9, top: 15),
              height: 25,
              width: 300,
              color: Color(0xffE0E0E0),
            ),
          ],
        ),
        Divider(
          height: 30,
          color: Color(0xffE0E0E0),
        ),
      ],
    );
  }
}
