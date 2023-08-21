import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@module
abstract class MainTheme {
  @injectable
  ThemeData themeData({
    @factoryParam Brightness? brightness,
  }) {
    return ThemeData(
      brightness: brightness,
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all<Size>(const Size(
            double.infinity,
            40.0,
          )),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          overlayColor:
              MaterialStateProperty.all<Color>(const Color(0x55FFFFFF)),
          textStyle: MaterialStateProperty.all<TextStyle>(
            const TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          elevation: MaterialStateProperty.all<double>(0),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> state) {
            if (state.contains(MaterialState.disabled)) {
              return Colors.grey.shade300;
            } else if (state.contains(MaterialState.error)) {
              return Colors.red;
            }
            return Colors.blue;
          }),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// @module
// abstract class MainTheme {
//   @injectable
//   ThemeData themeData({
//     @factoryParam AppColors? appColors,
//     @factoryParam Brightness? brightness,
//   }) {
//     appColors ??= AppColors.base();
//     brightness ??= Brightness.light;
//     final colorScheme = ColorScheme.fromSeed(
//       seedColor: appColors.primary,
//       brightness: brightness,
//       primary: appColors.primary,
//       onPrimary: appColors.onPrimary,
//       secondary: appColors.secondary,
//       onSecondary: appColors.onSecondary,
//       surface: appColors.background,
//       background: appColors.background,
//       onBackground: appColors.onBackground,
//     );
//
//     return ThemeData(
//       backgroundColor: appColors.background,
//       brightness: brightness,
//       scaffoldBackgroundColor: appColors.background,
//       primaryColor: appColors.primary,
//       snackBarTheme: SnackBarThemeData(
//         actionTextColor: appColors.secondary,
//         backgroundColor: appColors.onBackground,
//       ),
//       colorScheme: colorScheme,
//       inputDecorationTheme: InputDecorationTheme(
//         labelStyle: TextStyle(
//           color: appColors.caption,
//         ),
//         contentPadding: const EdgeInsets.all(5.0),
//         enabledBorder: UnderlineInputBorder(
//             borderSide: BorderSide(
//           color: appColors.secondary,
//         )),
//         disabledBorder: UnderlineInputBorder(
//           borderSide: BorderSide(
//             color: appColors.secondary,
//           ),
//         ),
//       ),
//       cardTheme: const CardTheme(
//         margin: EdgeInsets.zero,
//         elevation: 2,
//         shape:
//             RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero)),
//       ),
//       splashColor: const Color(0x55FFFFFF),
//       highlightColor: Colors.transparent,
//       canvasColor: appColors.background,
//       shadowColor: const Color(0x19000000),
//       bottomNavigationBarTheme: BottomNavigationBarThemeData(
//         backgroundColor: appColors.secondary,
//         elevation: 10.0,
//         unselectedItemColor: appColors.onSecondary,
//         selectedItemColor: appColors.primary,
//       ),
//       appBarTheme: AppBarTheme(
//         titleTextStyle: TextStyle(
//           fontSize: 20.0,
//           fontWeight: FontWeight.w700,
//           color: appColors.onPrimary,
//         ),
//         elevation: 2.0,
//         iconTheme: IconThemeData(
//           color: appColors.onPrimary,
//         ),
//         backgroundColor: appColors.primary,
//       ),
//       listTileTheme: ListTileThemeData(
//         tileColor: appColors.secondary,
//         selectedTileColor: appColors.primary,
//       ),
//       outlinedButtonTheme: OutlinedButtonThemeData(
//         style: ButtonStyle(
//           overlayColor:
//               MaterialStateProperty.all<Color>(const Color(0x55000000)),
//           textStyle: MaterialStateProperty.all<TextStyle>(
//             const TextStyle(
//                 fontWeight: FontWeight.w600,
//                 color: Colors.black),
//           ),
//           minimumSize: MaterialStateProperty.all<Size>(const Size(70, 50.0)),
//           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//             const RoundedRectangleBorder(
//               borderRadius: BorderRadius.all(
//                 Radius.zero,
//               ),
//             ),
//           ),
//           side: MaterialStateProperty.all<BorderSide>(
//             BorderSide(
//               color: appColors.primary,
//             ),
//           ),
//         ),
//       ),
//       textButtonTheme: TextButtonThemeData(
//         style: ButtonStyle(
//           overlayColor:
//               MaterialStateProperty.all<Color>(const Color(0x55FFFFFF)),
//           textStyle: MaterialStateProperty.all<TextStyle>(
//             const TextStyle(
//                 fontWeight: FontWeight.w600,
//                 color: Colors.white),
//           ),
//           minimumSize: MaterialStateProperty.all<Size>(const Size(70, 50.0)),
//           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//             const RoundedRectangleBorder(
//               borderRadius: BorderRadius.all(
//                 Radius.zero,
//               ),
//             ),
//           ),
//         ),
//       ),
//       pageTransitionsTheme: const PageTransitionsTheme(
//           builders: <TargetPlatform, PageTransitionsBuilder>{
//             TargetPlatform.android: ZoomPageTransitionsBuilder(),
//           }),
//       checkboxTheme: CheckboxThemeData(
//         fillColor: MaterialStateProperty.resolveWith<Color?>(
//             (Set<MaterialState> states) {
//           if (states.contains(MaterialState.disabled)) {
//             return null;
//           }
//           if (states.contains(MaterialState.selected)) {
//             return colorScheme.secondaryContainer;
//           }
//           return null;
//         }),
//       ),
//       radioTheme: RadioThemeData(
//         fillColor: MaterialStateProperty.resolveWith<Color?>(
//             (Set<MaterialState> states) {
//           if (states.contains(MaterialState.disabled)) {
//             return null;
//           }
//           if (states.contains(MaterialState.selected)) {
//             return colorScheme.secondaryContainer;
//           }
//           return null;
//         }),
//       ),
//       switchTheme: SwitchThemeData(
//         thumbColor: MaterialStateProperty.resolveWith<Color?>(
//             (Set<MaterialState> states) {
//           if (states.contains(MaterialState.disabled)) {
//             return null;
//           }
//           if (states.contains(MaterialState.selected)) {
//             return colorScheme.secondaryContainer;
//           }
//           return null;
//         }),
//         trackColor: MaterialStateProperty.resolveWith<Color?>(
//             (Set<MaterialState> states) {
//           if (states.contains(MaterialState.disabled)) {
//             return null;
//           }
//           if (states.contains(MaterialState.selected)) {
//             return colorScheme.secondaryContainer;
//           }
//           return null;
//         }),
//       ),
//       cupertinoOverrideTheme:
//           cupertinoThemeData(appColors: appColors, brightness: brightness),
//       extensions: [
//         CustomThemeExtension(appColors: appColors),
//       ],
//     );
//   }
//
//   @injectable
//   CupertinoThemeData cupertinoThemeData({
//     @factoryParam AppColors? appColors,
//     @factoryParam Brightness? brightness,
//   }) {
//     appColors ??= AppColors.base();
//     brightness ??= Brightness.light;
//     return CupertinoThemeData(
//       brightness: brightness,
//       textTheme: CupertinoTextThemeData(
//         primaryColor: appColors.onBackground,
//         textStyle: TextStyle(
//           inherit: false,
//           fontSize: 17.0,
//           letterSpacing: -0.41,
//           color: appColors.onBackground,
//           decoration: TextDecoration.none,
//         ),
//         actionTextStyle: TextStyle(
//           inherit: false,
//           fontSize: 17.0,
//           letterSpacing: -0.41,
//           color: appColors.primary,
//           decoration: TextDecoration.none,
//         ),
//         tabLabelTextStyle: TextStyle(
//           inherit: false,
//           fontSize: 10.0,
//           fontWeight: FontWeight.w500,
//           letterSpacing: -0.24,
//           color: appColors.onBackgroundContainer,
//         ),
//         navActionTextStyle: TextStyle(
//           inherit: false,
//           fontSize: 17.0,
//           letterSpacing: -0.41,
//           color: appColors.primary,
//           decoration: TextDecoration.none,
//         ),
//         pickerTextStyle: TextStyle(
//           inherit: false,
//           fontSize: 21.0,
//           fontWeight: FontWeight.w400,
//           letterSpacing: -0.6,
//           color: appColors.onBackground,
//         ),
//         dateTimePickerTextStyle: TextStyle(
//           inherit: false,
//           fontSize: 21,
//           fontWeight: FontWeight.normal,
//           color: appColors.onBackground,
//         ),
//         navTitleTextStyle: TextStyle(
//           inherit: false,
//           fontSize: 17.0,
//           fontWeight: FontWeight.w600,
//           letterSpacing: -0.41,
//           color: appColors.onBackground,
//         ),
//         navLargeTitleTextStyle: TextStyle(
//           inherit: false,
//           fontSize: 34.0,
//           fontWeight: FontWeight.w700,
//           letterSpacing: 0.41,
//           color: appColors.onBackground,
//         ),
//       ),
//       primaryColor: appColors.primary,
//       primaryContrastingColor: appColors.onPrimary,
//       barBackgroundColor: appColors.background,
//       scaffoldBackgroundColor: appColors.background,
//     );
//   }
// }
