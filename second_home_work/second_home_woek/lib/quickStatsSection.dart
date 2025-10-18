import 'package:flutter/material.dart';

class QuickStatsSection extends StatelessWidget {
  const QuickStatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Quick Stats',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            QouickSectionContainers(
              containerIcon: Icons.people,
              iconColor: Color(0xff673AB7),
              containerTitle: '1,234',
              containerSubTitle: 'Users',
            ),
            QouickSectionContainers(
              containerIcon: Icons.star,
              iconColor: Color(0xffFE9702),
              containerTitle: '4.8',
              containerSubTitle: 'Rating',
            ),
            QouickSectionContainers(
              containerIcon: Icons.trending_up,
              iconColor: Color(0xff5DAEEA),
              containerTitle: '98%',
              containerSubTitle: 'Success',
            ),
          ],
        ),
      ],
    );
  }
}

class QouickSectionContainers extends StatelessWidget {
  const QouickSectionContainers({
    super.key,
    required this.containerIcon,
    required this.iconColor,
    required this.containerTitle,
    required this.containerSubTitle,
  });

  final IconData containerIcon;
  final Color iconColor;
  final String containerTitle;
  final String containerSubTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 1,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            containerIcon,
            color: iconColor,
            size: 32,
          ),
          Text(
            containerTitle,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            containerSubTitle,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
