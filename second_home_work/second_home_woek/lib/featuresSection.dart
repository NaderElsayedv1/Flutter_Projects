import 'package:flutter/material.dart';

class Featuressection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,

      children: [
        Text(
          'Features',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
        ),

        FeaturesContainer(
          iconShape: Icons.speed,
          iconShapeColor: Color(0xff673AB7),
          featTitle: 'Fast Performance',
          featSubTitle: 'Lightning fast app performance',
        ),
        SizedBox(
          height: 10,
        ),
        FeaturesContainer(
          iconShape: Icons.security,
          iconShapeColor: Color(0xff2397F0),
          featTitle: 'Secure',
          featSubTitle: 'Your data is safe with us',
        ),
        SizedBox(
          height: 10,
        ),
        FeaturesContainer(
          iconShape: Icons.color_lens,
          iconShapeColor: Color(0xffFF9505),
          featTitle: 'Beautiful Ui',
          featSubTitle: 'Modern and clean design',
        ),
      ],
    );
  }
}

class FeaturesContainer extends StatelessWidget {
  const FeaturesContainer({
    super.key,
    required this.iconShape,
    required this.iconShapeColor,
    required this.featTitle,
    required this.featSubTitle,
  });
  final IconData iconShape;
  final Color iconShapeColor;
  final String featTitle;
  final String featSubTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),

        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 1,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: ListTile(
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: iconShapeColor.withValues(alpha: 0.2),
          ),
          child: Icon(
            iconShape,
            color: iconShapeColor,
            size: 30,
          ),
        ),
        title: Text(
          featTitle,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          featSubTitle,
          style: TextStyle(fontSize: 12),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 18,
          color: Colors.grey,
        ),
      ),
    );
  }
}
