import 'package:e_connect_app/configs/app_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      initialRoute: AppRoute.routeLoginScreen(),
      getPages: AppRoute.generateGetPages(),
    );
  }
}
