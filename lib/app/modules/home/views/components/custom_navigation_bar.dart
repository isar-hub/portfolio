// lib/views/custom_navigation_bar.dart
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:portfoil/app/modules/home/views/components/main_section.dart';

import '../../../../theme/AppTheme.dart';

class CustomNavigationBar extends GetView<NavigationController> {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: NeumorphicColors.darkBackground,
        borderRadius: BorderRadius.only(topRight: Radius.circular(defaultRadius),bottomLeft: Radius.circular(defaultRadius)),
        border: Border.all(color: Colors.grey,width: 0.3)
      ),
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _NavItem(
            text: 'About',
            route: '/about',
          ),
          _NavItem(
            text: 'Resume',
            route: '/resume',
          ),
          _NavItem(
            text: 'Portfolio',
            route: '/portfolio',
          ),
          _NavItem(
            text: 'Blog',
            route: '/blog',
          ),
          _NavItem(
            text: 'Contact',
            route: '/contact',
          ),
        ],
      ),
    );
  }
}
class _NavItem extends GetView<NavigationController> {
  final String text;
  final String route;

  const _NavItem({
    required this.text,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final isActive = controller.currentRoute == route;
      return GestureDetector(
        onTap: () => controller.changePage(route),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 200),
              style: Theme.of(context).textTheme.bodySmall!.copyWith( color: isActive ? yellowColor : Colors.grey[300],),
              child: Text(text),
            ),
          ),
        ),
      );
    });
  }
}