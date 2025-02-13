import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:portfoil/app/modules/home/views/components/profile_card.dart';

import '../controllers/home_controller.dart';
import 'components/main_section.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Row(

            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center, // Center the row content
            children: [
              Spacer(flex:3,),
              Expanded(flex:2,child: ProfileCard()), // ProfileCard takes the available space
              SizedBox(width: 10), // Add spacing between ProfileCard and MainSection
              Expanded(
                flex: 6,
                child: MainSection(),
              ),
              Spacer(flex: 3,), // Add spacing between MainSection and other widgets
            ],
          ),
        ),
      ),
    );
  }
}
