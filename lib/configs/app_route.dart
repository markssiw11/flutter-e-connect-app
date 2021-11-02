import 'package:e_connect_app/pages/login/login_page.dart';
import 'package:get/route_manager.dart';

class AppRoute {
  // route name
  static String routeLoginScreen() => '/login';
  // list page
  static List<GetPage> generateGetPages() => [
        GetPage(
          name: routeLoginScreen(),
          page: () => const LoginPage(),
          transition: Transition.cupertino,
        )
      ];
}
