import 'package:flutter/material.dart';
import '../core/app_export.dart';

enum BottomBarEnum { Fill408, Fill219, Fill348, Vector }
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgFill408,
      activeIcon: ImageConstant.imgFill408,
      type: BottomBarEnum.Fill408,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFill219,
      activeIcon: ImageConstant.imgFill219,
      type: BottomBarEnum.Fill219,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFill348,
      activeIcon: ImageConstant.imgFill348,
      type: BottomBarEnum.Fill348,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgVector,
      activeIcon: ImageConstant.imgVector,
      type: BottomBarEnum.Vector,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.v,
      decoration: BoxDecoration(
        color: appTheme.blueGray900D6,
        borderRadius: BorderRadius.circular(
          15.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 16.v,
              width: 18.h,
              color: theme.colorScheme.onPrimary.withOpacity(1),
            ),
            activeIcon: CustomImageView(
              imagePath: bottomMenuList[index].activeIcon,
              height: 19.adaptSize,
              width: 19.adaptSize,
              color: theme.colorScheme.onPrimary.withOpacity(1),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class BottomMenuModel {
  BottomMenuModel(
      {required this.icon, required this.activeIcon, required this.type});

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
