import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 62),
              child: Text(
                'Hi Dhiraj!',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 4),
            Padding(
              padding: EdgeInsets.only(left: 62),
              child: Text(
                'Good Morning!',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
              ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(right: 20),
          child: CircleAvatar(
            radius: 17.5,
            child: Text("A"),
          ),
        ),
      ],
    );
  }
}
