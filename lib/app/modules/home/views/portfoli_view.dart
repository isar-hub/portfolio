import 'package:flutter/material.dart';
import 'package:portfoil/app/modules/home/views/components/project_single.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: GridView.builder(
        itemCount: 10, // Number of items to generate
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Number of columns
          crossAxisSpacing: 20, // Spacing between columns
          mainAxisSpacing: 20, // Spacing between rows
        ),
        itemBuilder: (context, index) {
          return SingleProjectCard(); // Your SingleProjectCard widget
        },
      ),
    );
  }
}
