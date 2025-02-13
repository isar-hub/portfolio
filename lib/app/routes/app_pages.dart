import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/about_View.dart';
import '../modules/home/views/contact_view.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home/views/portfoli_view.dart';
import '../modules/home/views/resume_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: '/about',
      page: () =>  AboutView(),
    ),
    GetPage(
      name: '/resume',
      page: () => const ResumeView(),
    ),
    GetPage(
      name: '/portfolio',
      page: () => const PortfolioView(),
    ),
    // GetPage(
    //   name: '/blog',
    //   page: () => const BlogView(),
    // ),
    GetPage(
      name: '/contact',
      page: () => const ContactView(),
    ),

  ];
}
