import 'package:flutter/material.dart';

class Third_Container extends StatelessWidget {
  const Third_Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF3E5F6),
      child: Row(
        children: [
          container_widget(),
          SizedBox(
            width: 5,
          ),
          container_widget(
            addWidget: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 45,
                  color: Color(0xffCF93D9),
                ),
                Container(
                  height: 45,
                  color: Color(0xffCF93D9),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 5,
          ),
          container_widget(),
        ],
      ),
    );
  }
}

class container_widget extends StatelessWidget {
  final Color color = Color(0xffE1BEE7);
  final Widget? addWidget;
  container_widget({super.key, this.addWidget});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 80,
      color: color,
      child: addWidget,
    );
  }
}
