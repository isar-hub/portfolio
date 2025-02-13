import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.iconColor = Colors.yellow,
    this.iconSize = 24.0,
    this.padding = const EdgeInsets.all(0),
  });

  final String title, subtitle;
  final IconData icon;
  final Color iconColor;
  final double iconSize;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Neumorphic(
        style: NeumorphicStyle(
          shape: NeumorphicShape.concave,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
          depth: 3,
          intensity: 4,
          surfaceIntensity: 0,
          shadowLightColor: Colors.black12,
          shadowDarkColor: Colors.black12,
          color: Colors.black12,
        ),
        child: Padding(
          padding: padding,
          child: Icon(
            icon,
          ),
        ),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleSmall
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(fontSize: 12),
      ),
    );
  }
}
