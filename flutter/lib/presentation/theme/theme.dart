import 'package:example_app/presentation/theme/models/app_fonts.dart';
import 'package:example_app/presentation/theme/models/app_insets.dart';
import 'package:example_app/presentation/theme/models/colors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@module
abstract class MainTheme {
  @injectable
  ThemeData themeData({
    @factoryParam AppColors? colors,
    @factoryParam Brightness? brightness,
  }) {
    final isIos = defaultTargetPlatform == TargetPlatform.iOS;
    final appColors = colors ?? AppColors.base();
    brightness ??= Brightness.light;
    final colorScheme = ColorScheme.fromSeed(
      seedColor: appColors.primary,
      brightness: brightness,
      primary: appColors.primary,
      onPrimary: appColors.onPrimary,
      secondary: appColors.secondary,
      onSecondary: appColors.onSecondary,
      surface: appColors.primaryBackground,
      onSurface: appColors.textColor,
      background: appColors.primaryBackground,
      onBackground: appColors.textColor,
    );

    return ThemeData(
      fontFamily: AppFonts.inter,
      dialogBackgroundColor: appColors.secondaryBackground,
      dialogTheme: DialogTheme(
        backgroundColor: appColors.secondaryBackground,
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          color: appColors.textColor,
          fontSize: 60,
          fontFamily: AppFonts.inter,
          fontWeight: FontWeight.w400,
          height: 1.17,
          letterSpacing: 0.25,
        ),
        displayMedium: TextStyle(
          color: appColors.textColor,
          fontSize: 48,
          fontFamily: AppFonts.inter,
          fontWeight: FontWeight.w400,
          height: 1.17,
          letterSpacing: 0.25,
        ),
        displaySmall: TextStyle(
          color: appColors.textColor,
          fontSize: 39,
          fontFamily: AppFonts.inter,
          fontWeight: FontWeight.w400,
          height: 1.17,
          letterSpacing: 0.25,
        ),
        headlineLarge: TextStyle(
          color: appColors.textColor,
          fontSize: 28,
          fontFamily: AppFonts.inter,
          fontWeight: FontWeight.w400,
          height: 1.21,
          letterSpacing: 0.36,
        ),
        headlineMedium: TextStyle(
          color: appColors.textColor,
          fontSize: 22,
          fontFamily: AppFonts.inter,
          fontWeight: FontWeight.w400,
          height: 1.27,
          letterSpacing: 0.35,
        ),
        headlineSmall: TextStyle(
          color: appColors.textColor,
          fontSize: 20,
          fontFamily: AppFonts.inter,
          fontWeight: FontWeight.w400,
          height: 1.20,
          letterSpacing: 0.38,
        ),
        titleLarge: TextStyle(
          color: appColors.textColor,
          fontSize: 17,
          fontFamily: AppFonts.inter,
          fontWeight: FontWeight.w400,
          height: 1.29,
          letterSpacing: -0.41,
        ),
        titleMedium: TextStyle(
          color: appColors.textColor,
          fontSize: 16,
          fontFamily: AppFonts.inter,
          fontWeight: FontWeight.w700,
          height: 1.31,
          letterSpacing: -0.32,
        ),
        titleSmall: TextStyle(
          color: appColors.textColor,
          fontSize: 16,
          fontFamily: AppFonts.inter,
          fontWeight: FontWeight.w400,
          height: 1.31,
          letterSpacing: -0.32,
        ),
        labelLarge: TextStyle(
          color: appColors.textColor,
          fontSize: 16,
          fontFamily: AppFonts.inter,
          fontWeight: FontWeight.w400,
          height: 1.33,
          letterSpacing: -0.24,
        ),
        labelMedium: TextStyle(
          color: appColors.textColor,
          fontSize: 15,
          fontFamily: AppFonts.inter,
          fontWeight: FontWeight.w700,
          height: 1.33,
          letterSpacing: -0.24,
        ),
        labelSmall: TextStyle(
          color: appColors.textColor,
          fontSize: 15,
          fontFamily: AppFonts.inter,
          fontWeight: FontWeight.w400,
          height: 1.33,
          letterSpacing: -0.24,
        ),
        bodyLarge: TextStyle(
          color: appColors.textColor,
          fontSize: 17,
          fontFamily: AppFonts.inter,
          fontWeight: FontWeight.w400,
          height: 1.29,
          letterSpacing: -0.41,
        ),
        bodyMedium: TextStyle(
          color: appColors.textColor,
          fontSize: 12,
          fontFamily: AppFonts.inter,
          fontWeight: FontWeight.w400,
          height: 1.33,
        ),
        bodySmall: TextStyle(
          color: appColors.textColor,
          fontSize: 10,
          fontFamily: AppFonts.inter,
          height: 1.20,
          letterSpacing: 0.07,
        ),
      ),
      dividerTheme: DividerThemeData(
        color: appColors.labelColor,
        space: AppInsets.padding32,
        thickness: 1.0,
      ),
      brightness: brightness,
      scaffoldBackgroundColor: appColors.primaryBackground,
      primaryColor: appColors.primary,
      snackBarTheme: SnackBarThemeData(
        actionTextColor: appColors.textColor,
        backgroundColor: appColors.secondaryBackground,
        contentTextStyle: const TextStyle(
          fontFamily: AppFonts.inter,
        ),
      ),
      colorScheme: colorScheme,
      inputDecorationTheme: InputDecorationTheme(
        suffixIconColor: appColors.labelColor,
        prefixIconColor: appColors.labelColor,
        hintStyle: TextStyle(
          color: appColors.labelColor,
          fontSize: 17,
          fontFamily: AppFonts.inter,
          fontWeight: FontWeight.w400,
          height: 1.33,
        ),
        helperStyle: TextStyle(
          color: appColors.labelColor,
          fontSize: 16,
          fontFamily: AppFonts.inter,
          fontWeight: FontWeight.w400,
          height: 1.33,
        ),
        errorStyle: TextStyle(
          color: appColors.error,
          fontSize: 16,
          fontFamily: AppFonts.inter,
          fontWeight: FontWeight.w400,
          height: 1.33,
        ),
        labelStyle: TextStyle(
          color: appColors.labelColor,
          fontSize: 12,
          fontFamily: AppFonts.inter,
          fontWeight: FontWeight.w400,
          height: 1.33,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: appColors.labelColor,
          ),
          borderRadius: BorderRadius.zero,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppInsets.padding16,
          vertical: AppInsets.padding8,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: appColors.labelColor,
          ),
          borderRadius: const BorderRadius.all(
              Radius.circular(AppInsets.inputBorderRadius)),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: appColors.secondaryBackground,
          ),
          borderRadius: const BorderRadius.all(
              Radius.circular(AppInsets.inputBorderRadius)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: appColors.primary,
            width: 2.0,
          ),
          borderRadius: const BorderRadius.all(
              Radius.circular(AppInsets.inputBorderRadius)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: appColors.error,
          ),
          borderRadius: const BorderRadius.all(
              Radius.circular(AppInsets.inputBorderRadius)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: appColors.error,
          ),
          borderRadius: const BorderRadius.all(
              Radius.circular(AppInsets.inputBorderRadius)),
        ),
      ),
      cardTheme: CardTheme(
        color: appColors.secondaryBackground,
        margin: EdgeInsets.zero,
        elevation: 0.0,
        shape: const RoundedRectangleBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(AppInsets.cardBorderRadius)),
        ),
      ),
      splashColor: const Color(0x66BCBCBC),
      highlightColor: const Color(0x66BCBCBC),
      canvasColor: appColors.primaryBackground,
      shadowColor: Colors.black54,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: appColors.primaryBackground,
        elevation: 4.0,
        unselectedItemColor: appColors.labelColor,
        selectedItemColor: appColors.primary,
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontFamily: AppFonts.inter,
          fontWeight: FontWeight.w400,
          height: 1.33,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontFamily: AppFonts.inter,
          fontWeight: FontWeight.w400,
          height: 1.33,
        ),
      ),
      appBarTheme: AppBarTheme(
        // centerTitle: defaultTargetPlatform == TargetPlatform.iOS,
        titleTextStyle: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
          fontFamily: AppFonts.inter,
          color: appColors.textColor,
        ),
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: appColors.textColor,
        ),
        backgroundColor: appColors.primaryBackground,
        shadowColor: Colors.black.withOpacity(0.5),
        centerTitle: true,
      ),
      badgeTheme: BadgeThemeData(
          backgroundColor: appColors.red400,
          smallSize: 6.0,
          largeSize: 30.0,
          padding: const EdgeInsets.all(AppInsets.padding2)),
      tabBarTheme: TabBarTheme(
        indicator: isIos
            ? BoxDecoration(color: appColors.primary)
            : UnderlineTabIndicator(
                borderSide: BorderSide(width: 2.0, color: appColors.primary),
              ),
        labelColor: isIos ? appColors.textColor : appColors.primary,
        unselectedLabelColor: appColors.textColor.withOpacity(0.74),
        labelStyle: const TextStyle(
          fontSize: 12,
          fontFamily: AppFonts.inter,
          fontWeight: FontWeight.w700,
          height: 1.33,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontFamily: AppFonts.inter,
          fontWeight: FontWeight.w400,
          height: 1.33,
        ),
      ),
      iconTheme: IconThemeData(
        color: appColors.textColor,
        size: 24,
      ),
      listTileTheme: ListTileThemeData(
        tileColor: appColors.secondaryBackground,
        selectedTileColor: appColors.primary,
        iconColor: appColors.labelColor,
        textColor: appColors.textColor,
        style: ListTileStyle.drawer,
        minVerticalPadding: 0.0,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: AppInsets.padding16),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          overlayColor:
              MaterialStateProperty.all<Color>(const Color(0x10000000)),
          textStyle: MaterialStateProperty.all<TextStyle>(
            const TextStyle(
              fontFamily: AppFonts.inter,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          minimumSize: MaterialStateProperty.all<Size>(
              const Size(double.infinity, 50.0)),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            const StadiumBorder(),
          ),
          side: MaterialStateProperty.all<BorderSide>(
            BorderSide(
              color: appColors.primary,
            ),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          overlayColor:
              MaterialStateProperty.all<Color>(const Color(0x33FFFFFF)),
          textStyle: MaterialStateProperty.all<TextStyle>(
            const TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontFamily: AppFonts.inter,
              fontWeight: FontWeight.w700,
              height: 1.29,
              letterSpacing: -0.41,
            ),
          ),
          minimumSize: MaterialStateProperty.all<Size>(
              const Size(double.infinity, 46.0)),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (states) {
              if (states.contains(MaterialState.disabled)) {
                return appColors.disabled;
              }
              return appColors.primary;
            },
          ),
          foregroundColor:
              MaterialStateProperty.all<Color>(appColors.onPrimary),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            const StadiumBorder(),
          ),
        ),
      ),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.android: ZoomPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return appColors.primary;
          }
          return null;
        }),
        checkColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            return appColors.secondaryBackground;
          },
        ),
        side: BorderSide(color: appColors.labelColor, width: 2.0),
      ),
      dropdownMenuTheme: DropdownMenuThemeData(
        textStyle: TextStyle(
          color: appColors.textColor,
          fontSize: 17,
          fontFamily: AppFonts.inter,
          fontWeight: FontWeight.w400,
          height: 1.33,
        ),
        menuStyle: const MenuStyle(),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return appColors.primary;
          }
          return appColors.labelColor;
        }),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return colorScheme.primary;
            }
            return appColors.textColor;
          },
        ),
        trackColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return colorScheme.primary.withOpacity(0.54);
            }
            return appColors.labelColor;
          },
        ),
      ),
      cupertinoOverrideTheme: cupertinoThemeData(
        appColors: appColors,
        brightness: brightness,
      ),
      timePickerTheme: TimePickerThemeData(
        backgroundColor: appColors.primaryBackground,
        hourMinuteColor: MaterialStateColor.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return appColors.secondaryBackground;
            }
            return Colors.transparent;
          },
        ),
        hourMinuteTextColor: MaterialStateColor.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return appColors.primary;
            }
            return appColors.textColor;
          },
        ),
        dayPeriodColor: MaterialStateColor.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return appColors.secondaryBackground;
            }
            return Colors.transparent;
          },
        ),
        dayPeriodTextColor: MaterialStateColor.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return appColors.primary;
            }
            return appColors.textColor;
          },
        ),
        dayPeriodShape: RoundedRectangleBorder(
          side: BorderSide(color: appColors.textColor),
        ),
        dialBackgroundColor: Colors.transparent,
        dialTextColor: appColors.textColor,
        dialHandColor: appColors.primary,
        entryModeIconColor: appColors.textColor,
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: appColors.textColor,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
      ),
      actionIconTheme: ActionIconThemeData(
        backButtonIconBuilder: (context) {
          return Container(
            decoration: ShapeDecoration(
              shape: const CircleBorder(),
              color: appColors.secondaryBackground,
            ),
            padding: const EdgeInsets.all(AppInsets.padding8),
            child: const Padding(
              padding: EdgeInsets.only(right: AppInsets.padding2),
              child: Icon(
                CupertinoIcons.back,
              ),
            ),
          );
        },
      ),
      searchBarTheme: SearchBarThemeData(
        elevation: MaterialStateProperty.all(0.0),
        backgroundColor:
            MaterialStateProperty.all(appColors.secondaryBackground),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppInsets.inputBorderRadius,
            ),
          ),
        ),
        overlayColor: MaterialStateProperty.all(Colors.transparent),
      ),
      extensions: [
        CustomThemeExtension(appColors: appColors),
      ],
    );
  }

  @injectable
  CupertinoThemeData cupertinoThemeData({
    @factoryParam AppColors? appColors,
    @factoryParam Brightness? brightness,
  }) {
    appColors ??= AppColors.base();
    brightness ??= Brightness.dark;
    return CupertinoThemeData(
      brightness: brightness,
      textTheme: CupertinoTextThemeData(
        primaryColor: appColors.textColor,
        textStyle: TextStyle(
          inherit: false,
          fontFamily: AppFonts.inter,
          fontSize: 17.0,
          letterSpacing: -0.41,
          color: appColors.textColor,
          decoration: TextDecoration.none,
        ),
        actionTextStyle: TextStyle(
          inherit: false,
          fontFamily: AppFonts.inter,
          fontSize: 17.0,
          letterSpacing: -0.41,
          color: appColors.primary,
          decoration: TextDecoration.none,
        ),
        tabLabelTextStyle: TextStyle(
          inherit: false,
          fontFamily: AppFonts.inter,
          fontSize: 10.0,
          fontWeight: FontWeight.w500,
          letterSpacing: -0.24,
          color: appColors.secondaryBackground,
        ),
        navActionTextStyle: TextStyle(
          inherit: false,
          fontFamily: AppFonts.inter,
          fontSize: 17.0,
          letterSpacing: -0.41,
          color: appColors.primary,
          decoration: TextDecoration.none,
        ),
        pickerTextStyle: TextStyle(
          inherit: false,
          fontFamily: AppFonts.inter,
          fontSize: 21.0,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.6,
          color: appColors.textColor,
        ),
        dateTimePickerTextStyle: TextStyle(
          inherit: false,
          fontFamily: AppFonts.inter,
          fontSize: 21,
          fontWeight: FontWeight.normal,
          color: appColors.textColor,
        ),
        navTitleTextStyle: TextStyle(
          inherit: false,
          fontFamily: AppFonts.inter,
          fontSize: 17.0,
          fontWeight: FontWeight.w600,
          letterSpacing: -0.41,
          color: appColors.textColor,
        ),
        navLargeTitleTextStyle: TextStyle(
          inherit: false,
          fontFamily: AppFonts.inter,
          fontSize: 34.0,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.41,
          color: appColors.textColor,
        ),
      ),
      primaryColor: appColors.primary,
      primaryContrastingColor: appColors.textColor,
      barBackgroundColor: appColors.primaryBackground,
      scaffoldBackgroundColor: appColors.primaryBackground,
    );
  }
}
