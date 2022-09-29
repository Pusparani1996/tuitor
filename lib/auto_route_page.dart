import 'package:auto_route/auto_route.dart';
import 'package:tuitor/pages/become_tuitor_page.dart';
import 'package:tuitor/pages/find_tuitor_page.dart';
import 'package:tuitor/pages/home_page.dart';
import 'package:tuitor/pages/login_page.dart';


@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: HomePage,initial: true),
    AutoRoute(page: Login_Page),
    AutoRoute(page: Find_TuitorPage),
    AutoRoute(page: Become_TuitorPage),

  ])
 

class $AppRouter {}
