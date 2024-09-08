
import 'package:flutter/material.dart';
import 'package:shifa_app/config/themes/app_colors.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    secondaryContainer: AppColors.bgColorL,
    onSecondaryContainer: AppColors.onBgColorL,
  
    primary: AppColors.primayColorL,
    onPrimary: AppColors.onPrimayColorL,
    secondary: AppColors.secoundryColorL,
    onSecondary: AppColors.onSecoundryColorL,
    tertiary: AppColors.titrlColorL,
    onTertiary: AppColors.ontitrlColorL,
    surface: AppColors.surfcColorL,
    surfaceTint: AppColors.onSurfcColorL,
    onPrimaryContainer: Colors.blue,
  ),
  // fontFamily: AppStrings.fontFamily,
  cardTheme: const CardTheme(
    surfaceTintColor: Colors.transparent,
    color: AppColors.onBgColorL,
    shadowColor: AppColors.onBgColorL,
  ),
  dividerTheme: const DividerThemeData(
      indent: 50, space: 0, thickness: 0.1, color: AppColors.dividerColorL),
  outlinedButtonTheme: const OutlinedButtonThemeData(
    style: ButtonStyle(
      side: WidgetStatePropertyAll(
        BorderSide(color: AppColors.titrlColorL),
      ),
      padding: WidgetStatePropertyAll(
          EdgeInsets.symmetric(vertical: 5, horizontal: 12)),
      minimumSize: WidgetStatePropertyAll(
        Size(0, 0),
      ),
    ),
  ),
  elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
    elevation: WidgetStatePropertyAll(0),
    surfaceTintColor: WidgetStatePropertyAll(Colors.transparent),
    backgroundColor: WidgetStatePropertyAll(AppColors.primayColorL),
    padding: WidgetStatePropertyAll(
        EdgeInsets.symmetric(vertical: 5, horizontal: 12)),
    minimumSize: WidgetStatePropertyAll(
      Size(80, 0),
    ),
  )),
  appBarTheme: const AppBarTheme(
      surfaceTintColor: Colors.transparent,
      centerTitle: true,
      color: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
          fontWeight: FontWeight.w500, color: Colors.black, fontSize: 20)),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
     secondaryContainer: AppColors.onBgColorD,
    onSecondaryContainer: AppColors.bgColorD,
  
    primary: AppColors.primayColorD,
    onPrimary: AppColors.onPrimayColorD,
    secondary: AppColors.secoundryColorD,
    onSecondary: AppColors.onSecoundryColorD,
    tertiary: AppColors.titrlColorD,
    onTertiary: AppColors.ontitrlColorD,
    surface: AppColors.surfcColorD,
    surfaceTint: AppColors.onSurfcColorD,
    onPrimaryContainer: Colors.blue,
  ),
  // scaffoldBackgroundColor: AppColors.whiteGreyColor,
  // fontFamily: AppStrings.fontFamily,

  cardTheme: const CardTheme(
    surfaceTintColor: Colors.transparent,
    color: AppColors.onBgColorD,
    shadowColor: AppColors.onBgColorD,
  ),
  dividerTheme: const DividerThemeData(
    indent: 50,
    space: 0,
    thickness: 0.1,
    color: AppColors.dividerColorL,
  ),
  outlinedButtonTheme: const OutlinedButtonThemeData(
    style: ButtonStyle(
      side: WidgetStatePropertyAll(
        BorderSide(color: AppColors.titrlColorD),
      ),
      padding: WidgetStatePropertyAll(
          EdgeInsets.symmetric(vertical: 5, horizontal: 12)),
      minimumSize: WidgetStatePropertyAll(
        Size(0, 0),
      ),
    ),
  ),

  elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
    elevation: WidgetStatePropertyAll(0),
    surfaceTintColor: WidgetStatePropertyAll(Colors.transparent),
    backgroundColor: WidgetStatePropertyAll(AppColors.primayColorD),
    padding: WidgetStatePropertyAll(
        EdgeInsets.symmetric(vertical: 5, horizontal: 12)),
    minimumSize: WidgetStatePropertyAll(
      Size(80, 0),
    ),
  )),
  appBarTheme: const AppBarTheme(
      surfaceTintColor: Colors.transparent,
      centerTitle: true,
      color: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
          fontWeight: FontWeight.w500, color: Colors.black, fontSize: 20)),
);
