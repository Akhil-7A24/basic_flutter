import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:this_time/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:this_time/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:this_time/src/utils/theme/widget_themes/text_field_theme.dart';
import 'package:this_time/src/utils/theme/widget_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme : TTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
      textTheme: TTextTheme.darkTextTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
     inputDecorationTheme : TTextFormFieldTheme.darkInputDecorationTheme,

  );

}