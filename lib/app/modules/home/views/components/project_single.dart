import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfoil/app/theme/AppTheme.dart';
import '../../../../../generated/assets.dart';

class SingleProjectCard extends StatefulWidget {
  const SingleProjectCard({super.key});

  @override
  _SingleProjectCardState createState() => _SingleProjectCardState();
}

class _SingleProjectCardState extends State<SingleProjectCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true; // Set to true when mouse enters
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false; // Set to false when mouse exits
        });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // App Icon Container
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                Assets.assetsNagarikapp, // Make sure to add this to your assets
                fit: BoxFit.contain,
              ),
              if (_isHovered) // Show icon only when hovered
                ElevatedButton(
                  child: Icon(
                    Icons.remove_red_eye_outlined, // Replace with your desired icon
                    color: Colors.white70,
                    size: 40, // Adjust the size as needed
                  ), onPressed: () {  },
                ),
            ],
          ),
          const SizedBox(height: 12),
          const Text(
            'Nagarik App',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          // App Type
          const Text(
            'Application',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
