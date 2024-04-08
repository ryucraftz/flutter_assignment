import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get raleway {
    return copyWith(
      fontFamily: 'Raleway',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeRegular => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumGray40001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray40001,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumPoppinsPrimaryContainer =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodySmallGray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray400,
      );
  static get bodySmallGray40002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray40002,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallGray40003 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray40003,
      );
  static get bodySmallOnError => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmall_1 => theme.textTheme.bodySmall!;
// Label text style
  static get labelLargeBluegray100 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray100,
        fontWeight: FontWeight.w700,
      );
// Title text style
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumGray40001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray40001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
}
