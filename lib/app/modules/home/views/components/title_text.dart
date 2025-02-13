import 'package:flutter/material.dart';
import 'package:portfoil/app/theme/AppTheme.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
         Text(
          title,
          style: Theme.of(context).textTheme.displayLarge
        ),
        const SizedBox(height: 20),
        Container(
          width: 40, // Width of the yellow line
          height: 5, // Height/thickness of the line
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Colors.yellow,
                yellowColor,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ), // Yellow/amber color for the line
            borderRadius: BorderRadius.circular(2), // Slightly rounded corners
          ),
        ),
      ],
    );
  }
}