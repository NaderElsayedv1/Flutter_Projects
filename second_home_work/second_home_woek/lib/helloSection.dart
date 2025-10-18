import 'package:flutter/material.dart';

class HelloSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        color: Color(0xff8060B9),
      ),
      height: 145,
      width: 320,
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Hello!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 10),
              Icon(
                Icons.waving_hand,
                color: Color(0xffFFD04F),
              ),
            ],
          ),

          Text(
            'Try your best to build this ui',
            style: TextStyle(
              color: Colors.white,
            ),
          ),

          Container(
            alignment: Alignment.center,
            height: 45,
            width: 300,
            decoration: BoxDecoration(
              color: Color(0xff673AB7),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              'Get Started',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //  RichText(
          //   text: TextSpan(
          //     children: [
          //       TextSpan(
          //         text: "  Favorite",
          //         style: TextStyle(color: Colors.black, fontSize: 18),
          //       ),
          //       WidgetSpan(
          //         child: Icon(Icons.star, size: 18, color: Colors.amber),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
