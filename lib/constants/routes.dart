import 'package:gspdt/constants/constants.dart';

import '../pages/about_us/about_us_page.dart';

class AppRoutes {
  final routes = {
    '/': (context) => const Homepage(),
    '/fundraiseListPage': (context) => const FundraiseListPage(),
    '/aboutUsPage': (context) => AboutUsPage(),
    '/blogListPage': (context) => const BlogListPage(),
    '/projectsListPage': (context) => const ProjectsListPage(),
  };
}
