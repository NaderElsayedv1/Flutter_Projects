import 'package:flutter/material.dart';

class Fourth_Container extends StatelessWidget {
  const Fourth_Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 160,
                color: Color(0xffE0E0E0),
              ),
              SizedBox(
                width: 13,
              ),
              Container(
                height: 50,
                width: 160,
                color: Color(0xff80CBC4),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            color: Color(0xffE0E0E0),
            height: 50,
          ),
        ],
      ),
    );
  }
}
