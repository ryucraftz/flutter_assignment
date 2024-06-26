import 'dart:ui';
import 'package:flutter/material.dart';
import '../core/app_export.dart';

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
          shadowColor: appTheme.black900.withOpacity(0.25),
          elevation: 4,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.gray50,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.surface;
        }),
        side: BorderSide(
          color: appTheme.gray200,
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.blueGray10001,
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w300,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.black900,
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w300,
        ),
        displayLarge: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 64.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 40.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 20.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          color: appTheme.blueGray10001,
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    primary: Color(0XFF4C2A1A),
    primaryContainer: Color(0XFFABABAB),
    errorContainer: Color(0XFF575757),
    onError: Color(0XFF2F2F2F),
    onPrimary: Color(0X5BFFFFFF),
    onPrimaryContainer: Color(0XFF1C1C1C),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber500 => Color(0XFFFFC003);
// Black
  Color get black900 => Color(0XFF000000);
// BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray10001 => Color(0XFFCDCDCD);
  Color get blueGray400 => Color(0XFF888888);
  Color get blueGray900 => Color(0XFF2D2D2D);
  Color get blueGray90072 => Color(0X72303030);
// BlueGrayD
  Color get blueGray900D6 => Color(0XD6333333);
// Gray
  Color get gray200 => Color(0XFFEBEBEB);
  Color get gray300 => Color(0XFFE6E6E6);
  Color get gray400 => Color(0XFFC4C4C4);
  Color get gray40001 => Color(0XFFB5B5B5);
  Color get gray40002 => Color(0XFFC0C0C0);
  Color get gray40003 => Color(0XFFBBBBBC);
  Color get gray40004 => Color(0XFFB9B9B9);
  Color get gray40054 => Color(0X54B3B3B3);
  Color get gray50 => Color(0XFFF8F8F8);
  Color get gray500 => Color(0XFF919191);
  Color get gray600 => Color(0XFFA67359);
  Color get gray700 => Color(0XFF5D5D5D);
  Color get gray70001 => Color(0XFF5B5B5B);
  Color get gray800 => Color(0XFF3E3E3E);
// Green
  Color get green400 => Color(0XFF66A35C);
  Color get green40001 => Color(0XFF66A25C);
  Color get green500 => Color(0XFF37AD54);
// GreenE
  Color get green800E0 => Color(0XE0198032);
// Indigo
  Color get indigoA20000 => Color(0X004F71EA);
// Red
  Color get red30082 => Color(0X82CF7A4B);
}
