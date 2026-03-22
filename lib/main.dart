import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_app/core/constants.dart';
import 'package:poke_app/core/theme.dart';
import 'package:poke_app/features/pages/home_page/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360,800),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppConstants.appTitle,
        home: HomePage(),
        theme: AppTheme.appTheme,
        ),
    );
  }
}

