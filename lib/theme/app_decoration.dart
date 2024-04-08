import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green400,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
// Gradient decorations
  static BoxDecoration get gradientOnPrimaryToOnPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(0.93, 0.96),
          colors: [
            theme.colorScheme.onPrimary.withOpacity(0.23),
            theme.colorScheme.onPrimary.withOpacity(0.12),
            theme.colorScheme.onPrimary.withOpacity(0.11)
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryToOnPrimary1 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(0.93, 0.96),
          colors: [
            theme.colorScheme.onPrimary.withOpacity(0.23),
            theme.colorScheme.onPrimary.withOpacity(0.12),
            theme.colorScheme.onPrimary.withOpacity(0.11)
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryToOnPrimary2 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.02),
          end: Alignment(0.97, 1),
          colors: [
            theme.colorScheme.onPrimary,
            theme.colorScheme.onPrimary.withOpacity(0.18),
            theme.colorScheme.onPrimary.withOpacity(0.3)
          ],
        ),
      );
// Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.gray40054,
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
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: appTheme.blueGray900D6,
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
      );
  static BoxDecoration get outlineOnPrimary => BoxDecoration();
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder14 => BorderRadius.circular(
        14.h,
      );
  static BorderRadius get roundedBorder17 => BorderRadius.circular(
        17.h,
      );
  static BorderRadius get roundedBorder29 => BorderRadius.circular(
        29.h,
      );
  static BorderRadius get roundedBorder7 => BorderRadius.circular(
        7.h,
      );
}
