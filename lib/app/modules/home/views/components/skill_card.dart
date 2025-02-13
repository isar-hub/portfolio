import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({super.key, required this.title, required this.subtitle, required this.iconSvg});
  final String title,subtitle,iconSvg;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        depth: 1.5,
        intensity: 0.8,
        lightSource: LightSource.bottomRight,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
        color: const Color(0xFF2A2A2A),  // Dark background color
        shadowDarkColor: Colors.black,
        shadowLightColor: Colors.grey[800],
      ),
      child: Padding(
        padding:  EdgeInsets.all(16.0),
        child: Row(
          spacing: 16,
          children: [
            SvgPicture.asset(iconSvg,height: 40,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children:  [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                  ),
                  SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14
                    ),
                    maxLines: 3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}