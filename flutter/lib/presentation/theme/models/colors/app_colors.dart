import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_colors.freezed.dart';

@freezed
class AppColors with _$AppColors {
  const AppColors._();
  const factory AppColors({
    required Color primary,
    required Color onPrimary,
    required Color secondary,
    required Color onSecondary,
    required Color primaryBackground,
    required Color secondaryBackground,
    required Color textColor,
    required Color labelColor,
    required Color success,
    required Color error,
    required Color disabled,
    required Color pink100,
    required Color pink200,
    required Color pink700,
    required Color pink900,
    required Color purple50,
    required Color purple100,
    required Color purple700,
    required Color purple900,
    required Color red400,
    required Color red700,
    required Color teal50,
    required Color teal100,
    required Color teal200,
    required Color teal500,
    required Color yellow50,
    required Color yellow100,
    required Color yellow200,
    required Color yellow500,
    required Color blue50,
    required Color blue100,
    required LinearGradient shimmerGradient,
  }) = _AppColors;

  factory AppColors.base() => const AppColors(
        primary: Color(0xFF007CE1),
        onPrimary: Color(0xFFFFFFFF),
        secondary: Color(0xFFF6F6F6),
        onSecondary: Color(0xFF000000),
        textColor: Color(0xFF000000),
        primaryBackground: Color(0xFFFFFFFF),
        secondaryBackground: Color(0xFFF6F6F6),
        error: Color(0xFFFF3B30),
        success: Color(0xFF5BFF83),
        disabled: Color(0xFF9BBAF1),
        labelColor: Color(0xFFABABAB),
        pink100: Color(0xFFF9B5B5),
        pink200: Color(0xFFF7A0B3),
        pink700: Color(0xFF781A65),
        pink900: Color(0xFF6A0F41),
        purple50: Color(0xFFB1B5DB),
        purple100: Color(0xFFCE9DC7),
        purple700: Color(0xFF352D8D),
        purple900: Color(0xFF2B0F54),
        teal50: Color(0xFFACE0EB),
        teal100: Color(0xFF91D3CB),
        teal200: Color(0xFF8BC1C7),
        teal500: Color(0xFF247A7F),
        yellow50: Color(0xFFFFEA8F),
        yellow100: Color(0xFFFFD572),
        yellow200: Color(0xFFFBB377),
        yellow500: Color(0xFFFCB53B),
        red400: Color(0xFFF1513F),
        red700: Color(0xFFA1222B),
        blue50: Color(0xFFD1E1EF),
        blue100: Color(0xFFBACCEA),
        shimmerGradient: LinearGradient(
          colors: [
            Color(0xFFEEEEEE),
            Color(0xFFF4F4F4),
            Color(0xFFEEEEEE),
          ],
          stops: [
            0.1,
            0.3,
            0.4,
          ],
          begin: Alignment(-1.0, -0.3),
          end: Alignment(1.0, 0.3),
          tileMode: TileMode.clamp,
        ),
      );
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  const CustomThemeExtension({
    required this.appColors,
  }) : super();

  final AppColors appColors;

  Color get primary => appColors.primary;
  Color get secondary => appColors.secondary;
  Color get primaryBackground => appColors.primaryBackground;
  Color get secondaryBackground => appColors.secondaryBackground;
  Color get textColor => appColors.textColor;
  Color get labelColor => appColors.labelColor;
  Color get success => appColors.success;
  Color get error => appColors.error;
  Color get disabled => appColors.disabled;
  Color get pink100 => appColors.pink100;
  Color get pink200 => appColors.pink200;
  Color get pink700 => appColors.pink700;
  Color get pink900 => appColors.pink900;
  Color get purple50 => appColors.purple50;
  Color get purple100 => appColors.purple100;
  Color get purple700 => appColors.purple700;
  Color get purple900 => appColors.purple900;
  Color get red400 => appColors.red400;
  Color get red700 => appColors.red700;
  Color get teal50 => appColors.teal50;
  Color get teal100 => appColors.teal100;
  Color get teal200 => appColors.teal200;
  Color get teal500 => appColors.teal500;
  Color get yellow50 => appColors.yellow50;
  Color get yellow100 => appColors.yellow100;
  Color get yellow200 => appColors.yellow200;
  Color get yellow500 => appColors.yellow500;
  Color get blue50 => appColors.blue50;

  Color get blue100 => appColors.blue100;

  LinearGradient get shimmerGradient => appColors.shimmerGradient;

  @override
  CustomThemeExtension copyWith({
    AppColors? appColors,
  }) {
    return CustomThemeExtension(
      appColors: appColors ?? this.appColors,
    );
  }

  @override
  CustomThemeExtension lerp(covariant CustomThemeExtension? other, double t) {
    if (other is! CustomThemeExtension) {
      return this;
    }
    return CustomThemeExtension(
      appColors: AppColors(
        primary: Color.lerp(appColors.primary, other.appColors.primary, t) ??
            appColors.primary,
        onPrimary:
            Color.lerp(appColors.onPrimary, other.appColors.onPrimary, t) ??
                appColors.onPrimary,
        secondary:
            Color.lerp(appColors.secondary, other.appColors.secondary, t) ??
                appColors.secondary,
        onSecondary:
            Color.lerp(appColors.onSecondary, other.appColors.onSecondary, t) ??
                appColors.onSecondary,
        primaryBackground: Color.lerp(appColors.primaryBackground,
                other.appColors.primaryBackground, t) ??
            appColors.primaryBackground,
        secondaryBackground: Color.lerp(appColors.secondaryBackground,
                other.appColors.secondaryBackground, t) ??
            appColors.secondaryBackground,
        textColor:
            Color.lerp(appColors.textColor, other.appColors.textColor, t) ??
                appColors.textColor,
        labelColor:
            Color.lerp(appColors.labelColor, other.appColors.labelColor, t) ??
                appColors.labelColor,
        success: Color.lerp(appColors.success, other.appColors.success, t) ??
            appColors.success,
        error: Color.lerp(appColors.error, other.appColors.error, t) ??
            appColors.error,
        disabled: Color.lerp(appColors.disabled, other.appColors.disabled, t) ??
            appColors.disabled,
        pink100: Color.lerp(appColors.pink100, other.appColors.pink100, t) ??
            appColors.pink100,
        pink200: Color.lerp(appColors.pink200, other.appColors.pink200, t) ??
            appColors.pink200,
        pink700: Color.lerp(appColors.pink700, other.appColors.pink700, t) ??
            appColors.pink700,
        pink900: Color.lerp(appColors.pink900, other.appColors.pink900, t) ??
            appColors.pink900,
        purple50: Color.lerp(appColors.purple50, other.appColors.purple50, t) ??
            appColors.purple50,
        purple100:
            Color.lerp(appColors.purple100, other.appColors.purple100, t) ??
                appColors.purple100,
        purple700:
            Color.lerp(appColors.purple700, other.appColors.purple700, t) ??
                appColors.purple700,
        purple900:
            Color.lerp(appColors.purple900, other.appColors.purple900, t) ??
                appColors.purple900,
        red400: Color.lerp(appColors.red400, other.appColors.red400, t) ??
            appColors.red400,
        red700: Color.lerp(appColors.red700, other.appColors.red700, t) ??
            appColors.red700,
        teal50: Color.lerp(appColors.teal50, other.appColors.teal50, t) ??
            appColors.teal50,
        teal100: Color.lerp(appColors.teal100, other.appColors.teal100, t) ??
            appColors.teal100,
        teal200: Color.lerp(appColors.teal200, other.appColors.teal200, t) ??
            appColors.teal200,
        teal500: Color.lerp(appColors.teal500, other.appColors.teal500, t) ??
            appColors.teal500,
        yellow50: Color.lerp(appColors.yellow50, other.appColors.yellow50, t) ??
            appColors.yellow50,
        yellow100:
            Color.lerp(appColors.yellow100, other.appColors.yellow100, t) ??
                appColors.yellow100,
        yellow200:
            Color.lerp(appColors.yellow200, other.appColors.yellow200, t) ??
                appColors.yellow200,
        yellow500:
            Color.lerp(appColors.yellow500, other.appColors.yellow500, t) ??
                appColors.yellow500,
        blue50: Color.lerp(appColors.blue50, other.appColors.blue50, t) ??
            appColors.blue50,
        blue100: Color.lerp(appColors.blue100, other.appColors.blue100, t) ??
            appColors.blue100,
        shimmerGradient: LinearGradient.lerp(appColors.shimmerGradient,
                other.appColors.shimmerGradient, t) ??
            appColors.shimmerGradient,
      ),
    );
  }
}
