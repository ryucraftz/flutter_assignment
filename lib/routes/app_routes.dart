import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/inner_vone_container_screen/inner_vone_container_screen.dart';
import '../presentation/iphone_14_pro_max_two_screen/iphone_14_pro_max_two_screen.dart';

class AppRoutes {
  static const String innerVoneContainerScreen = '/inner_vone_container_screen';

  static const String innerVonePage = '/inner_vone_page';

  static const String iphone14ProMaxTwoScreen = '/iphone_14_pro_max_two_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        innerVoneContainerScreen: InnerVoneContainerScreen.builder,
        iphone14ProMaxTwoScreen: Iphone14ProMaxTwoScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: InnerVoneContainerScreen.builder
      };
}
