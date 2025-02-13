import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfoil/app/modules/home/views/components/skill_card.dart';
import 'package:portfoil/app/modules/home/views/components/title_text.dart';
import 'package:portfoil/app/theme/AppTheme.dart';

import '../../../../generated/assets.dart';

class AboutView extends StatelessWidget {
  AboutView({super.key});

  final skills = [
    Assets.svgAndroidStudio,
    Assets.svgDart,
    Assets.svgFlutter,
    Assets.svgXcode,
    Assets.svgFigma,
    Assets.svgFirebase,
    Assets.svgPostman,
  ];
  final String aboutMe =
      'A passionate Flutter developer with strong expertise in cross-platform apps, REST APIs, UI/UX, widgets, and state management solutions. Proven track record in delivering cutting-edge solutions, including API integration, third-party libraries, and performance optimization. Adept at debugging to ensure high-quality, responsive apps and An agile collaborator committed to staying current with industry trends.\n\nIf you re seeking a skilled Flutter developer to breathe life into your project and exceed your expectations, I am here to collaborate and create magic together. Reach out, and lets transform your vision into a reality!';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleText(title: 'About Me'),
          const SizedBox(height: 20),
          SelectableText(
            aboutMe,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Colors.white70,
                fontWeight: FontWeight.normal,
                fontSize: 14
            ),
          ),
          const SizedBox(height: 30), // Adjusted spacing between rows

          Text(
            "What I'm Doing",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 12), // Adjusted spacing between rows
          _buildSkillRow(
            context,
            SkillCard(
              title: 'Web Development',
              subtitle:
                  'High-quality development of sites at the professional level.\n',
              iconSvg: Assets.svgIconDev,
            ),
            SkillCard(
              title: 'Backend Development',
              subtitle:
                  'High-performance backend services designed for scalability and seamless user experience.',
              iconSvg: Assets.svgIconBackend,
            ),
          ),
          _buildSkillRow(
            context,
            SkillCard(
              title: 'UI/UX Design',
              subtitle:
                  'The most modern and high-quality design made at a professional level.\n',
              iconSvg: Assets.svgIconDesign,
            ),
            SkillCard(
              title: 'Mobile Apps',
              subtitle:
                  'Professional development of applications for Android and ios.\n',
              iconSvg: Assets.svgIconApp,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 200.0,
              viewportFraction: 0.3,
            ),
            items: skills.map((skill) {
              return Builder(
                builder: (BuildContext context) {
                  return SizedBox(
                    width: 200,
                    child: SvgPicture.asset(
                      skill,
                      fit: BoxFit.fill,
                    ),
                  );
                },
              );
            }).toList(),
          )
        ],
      ),
    );
  }

  Widget _buildSkillRow(
      BuildContext context, SkillCard card1, SkillCard card2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(child: card1),
        const SizedBox(width: 12), // Space between the cards
        Expanded(child: card2),
      ],
    );
  }
}
