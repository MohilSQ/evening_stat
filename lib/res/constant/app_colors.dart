import 'package:flutter/material.dart';

/// Enter your app primer color code in opacity ----->>
/// NOTE: Don't change opacity code just change color code -------->>
Map<int, Color> color = {
  50: const Color(0x1a00DD8D),
  100: const Color(0x2600DD8D),
  200: const Color(0x3300DD8D),
  300: const Color(0x4d00DD8D),
  400: const Color(0x6600DD8D),
  500: const Color(0x8000DD8D),
  600: const Color(0x9900DD8D),
  700: const Color(0xb300DD8D),
  800: const Color(0xcc00DD8D),
  900: const Color(0xe600DD8D),
};

class AppColors {
  /// Enter your app primer color code ----->>
  static MaterialColor primerColor = MaterialColor(0xFF00DD8D, color);

  ///************** Common Color **************///
  /// NOTE: DO not remove this colors -------->>>
  static Color blackColor = const Color(0xFF000000);
  static Color whiteColor = const Color(0xFFFFFFFF);
  static Color yellowColor = const Color(0xFFEEC829);
  static Color redColor = const Color(0xFFE94057);
  static Color blueColor = const Color(0xFF2196F3);
  static Color greyColor = const Color(0xFF727272);
  static Color lightGreyColor = const Color(0xFFE3E0E0);
  static Color transparentColor = const Color(0x00000000);

  static Color blurColor = const Color(0x80044C89);

  ///************** Light Color **************///
  static Color lightAppColor = const Color(0xFF003967);
  static Color lightUnSelectColor = const Color(0xFF6F7E86);
  static Color lightSelectColor = const Color(0xFF0092E5);
  static Color lightButtonColorFirst = const Color(0xFF0B6BBC);
  static Color lightButtonColorSecond = const Color(0xFF064478);
  static Color lightUnButtonColorFirst = const Color(0xFF949494);
  static Color lightUnButtonColorSecond = const Color(0xFF515151);
  static Color lightUnButtonTextColor = const Color(0xFF474747);
}
