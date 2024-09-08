import 'package:flutter/material.dart' show BuildContext, ColorScheme, Theme;

extension ColorExtension on BuildContext {
  ColorScheme get themeColor => Theme.of(this).colorScheme;
}
