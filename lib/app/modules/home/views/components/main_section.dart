import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:portfoil/app/theme/AppTheme.dart';

import '../about_View.dart';
import '../contact_view.dart';
import '../portfoli_view.dart';
import '../resume_view.dart';
import 'custom_navigation_bar.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(NavigationController());
    return Card(
      child: Stack(
        children: [
          Positioned(top: 0, right: 0, child: const CustomNavigationBar()),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 10,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Obx(() => _buildPage()),
              )
          )
        ],
      ),
    );
  }

  Widget _buildPage() {
    final controller = Get.find<NavigationController>();
    switch (controller.currentRoute) {
      case '/about':
        return AboutView();
      case '/resume':
        return const ResumeView();
      case '/portfolio':
        return const PortfolioView();
      // case '/blog':
      //   return const BlogView();
      case '/contact':
        return const ContactView();
      default:
        return AboutView();
    }
  }
}

class NavigationController extends GetxController {
  final _currentRoute = '/about'.obs;

  String get currentRoute => _currentRoute.value;

  void changePage(String route) {
    _currentRoute.value = route;
  }
}
