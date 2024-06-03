// import 'package:bluelin/utils/ui/constants/constants.dart';
// import 'package:flutter/material.dart';

// import 'package:google_fonts/google_fonts.dart';

// class AppTheme {
//   // LIGHT MODE.
//   static ThemeData lightTheme = ThemeData(
//     useMaterial3: true,
//     // primarySwatch: Colors.teal, <--- Fill This Later

//     brightness: Brightness.light,
//     scaffoldBackgroundColor: AppColors.kLightBGColor,
//     fontFamily: GoogleFonts.manrope().fontFamily,
//     primaryColor: AppColors.kLightButtonColor,
//     appBarTheme: AppBarTheme(
//       backgroundColor: Colors.transparent,
//       elevation: 0,
//       titleTextStyle:
//           AppTypography.kSemiBold20.copyWith(color: AppColors.kBlack),
//       scrolledUnderElevation: 0,
//     ),
//     inputDecorationTheme: const InputDecorationTheme(
//       contentPadding: EdgeInsets.symmetric(
//         horizontal: 20,
//         vertical: 16,
//       ),
//       enabledBorder: OutlineInputBorder(
//         borderSide: BorderSide.none,
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderSide: BorderSide.none,
//       ),
//       border: OutlineInputBorder(
//         borderSide: BorderSide.none,
//       ),
//       errorBorder: OutlineInputBorder(
//         borderSide: BorderSide.none,
//       ),
//     ),
// // bottom navigation bar theme.
//     navigationBarTheme: NavigationBarThemeData(
//       backgroundColor: AppColors.kLightBGColor,
//       elevation: 0.0,
//       indicatorColor: const Color(0xffF0F0F0),
//       labelTextStyle: MaterialStatePropertyAll(
//         GoogleFonts.mulish().copyWith(
//           fontWeight: FontWeight.w900,
//           fontSize: 12,
//           // color: AppColors.kLightButtonColor,
//         ),
//       ),
//       iconTheme: const MaterialStatePropertyAll(
//         IconThemeData(
//           size: 28,
//           // color: AppColors.kLightSecondaryTextColor,
//         ),
//       ),
//     ),

//     // RefreshIndicator Theme.
//   );

// // DARK MODE.
//   static ThemeData darkTheme = ThemeData(
//     useMaterial3: true,
//     brightness: Brightness.dark,
//     scaffoldBackgroundColor: AppColors.kDarkBGColor,
//     fontFamily: GoogleFonts.manrope().fontFamily,
//     primaryColor: AppColors.kDarkButtonColor,
//     appBarTheme: AppBarTheme(
//       backgroundColor: Colors.transparent,
//       elevation: 0,
//       titleTextStyle: AppTypography.kBold20.copyWith(
//         color: AppColors.kDarkTextColor,
//       ),
//       scrolledUnderElevation: 0,
//     ),

// // bottom navigation bar theme.
//     navigationBarTheme: NavigationBarThemeData(
//       backgroundColor: AppColors.kDarkBGColor,
//       elevation: 0.0,
//       labelTextStyle: MaterialStatePropertyAll(
//         GoogleFonts.mulish().copyWith(
//           fontWeight: FontWeight.w900,
//           fontSize: 12,
//           // color: AppColors.kDarkButtonColor,
//         ),
//       ),
//       iconTheme: const MaterialStatePropertyAll(
//         IconThemeData(
//           size: 28, color: AppColors.kWhite,
//           // color: AppColors.kDarkSecondaryTextColor,
//         ),
//       ),
//     ),

//     // textTheme: const TextTheme().copyWith(
//     //   bodySmall: const TextStyle(color: AppColors.kDarkTextColor),
//     //   bodyMedium: const TextStyle(color: AppColors.kDarkTextColor),
//     //   bodyLarge: const TextStyle(color: AppColors.kDarkTextColor),
//     //   labelSmall: const TextStyle(color: AppColors.kDarkTextColor),
//     //   labelMedium: const TextStyle(color: AppColors.kDarkTextColor),
//     //   labelLarge: const TextStyle(color: AppColors.kDarkTextColor),
//     //   displaySmall: const TextStyle(color: AppColors.kDarkTextColor),
//     //   displayMedium: const TextStyle(color: AppColors.kDarkTextColor),
//     //   displayLarge: const TextStyle(color: AppColors.kDarkTextColor),
//     // ),
//   );

//   // Default Overlay. <--- This portion is used for coloring the SafeArea
//   // static SystemUiOverlayStyle defaultOverlay = const SystemUiOverlayStyle(
//   //   statusBarColor: Colors.transparent,
//   //   statusBarBrightness: Brightness.dark,
//   //   statusBarIconBrightness: Brightness.dark,
//   //   systemNavigationBarColor: Colors.white,
//   //   systemNavigationBarDividerColor: Colors.transparent,
//   //   systemNavigationBarIconBrightness: Brightness.dark,
//   // );
// }
