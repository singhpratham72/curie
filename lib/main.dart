import 'package:curie/constants/colors.dart';
import 'package:curie/constants/textstyles.dart';
import 'package:curie/screens/landing_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Curie',
      theme: ThemeData(
          iconTheme: const IconThemeData(color: ApplicationColors.primaryColor),
          colorScheme:
              const ColorScheme.light(primary: ApplicationColors.primaryColor),
          primaryColor: ApplicationColors.primaryColor,
          primarySwatch: Colors.deepPurple,
          scaffoldBackgroundColor: ApplicationColors.scaffoldLight,
          textTheme: const TextTheme(
              bodyMedium: TextStyles.bodyText,
              bodySmall: TextStyles.bodyText,
              displayLarge: TextStyles.h1,
              displayMedium: TextStyles.h2,
              displaySmall: TextStyles.h3)),
      home: const LandingScreen(),
    );
  }
}
