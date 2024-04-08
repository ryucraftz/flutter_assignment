import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../inner_vone_page/inner_vone_page.dart';
import 'bloc/inner_vone_container_bloc.dart';
import 'models/inner_vone_container_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class InnerVoneContainerScreen extends StatelessWidget {
  InnerVoneContainerScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<InnerVoneContainerBloc>(
      create: (context) => InnerVoneContainerBloc(InnerVoneContainerState(
        innerVoneContainerModelObj: InnerVoneContainerModel(),
      ))
        ..add(InnerVoneContainerInitialEvent()),
      child: InnerVoneContainerScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InnerVoneContainerBloc, InnerVoneContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Navigator(
              key: navigatorKey,
              initialRoute: AppRoutes.innerVonePage,
              onGenerateRoute: (routeSetting) => PageRouteBuilder(
                pageBuilder: (ctx, ani, ani1) =>
                    getCurrentPage(context, routeSetting.name!),
                transitionDuration: Duration(seconds: 0),
              ),
            ),
            bottomNavigationBar: Padding(
              padding: EdgeInsets.symmetric(horizontal: 28.h),
              child: _buildBottombar(context),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildBottombar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Fill408:
        return AppRoutes.innerVonePage;
      case BottomBarEnum.Fill219:
        return "/";
      case BottomBarEnum.Fill348:
        return "/";
      case BottomBarEnum.Vector:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.innerVonePage:
        return InnerVonePage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
