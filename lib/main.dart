import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/core/app_color.dart';
import 'package:islami/features/nav/bottom_nav_bar.dart';
import 'package:islami/features/nav/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ///   i will explain this later

  runApp(IslamiApp());
}

//rootBundle

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      splitScreenMode: true,
      minTextAdapt: true,
      child: MaterialApp(
        themeMode: ThemeMode.dark,

        darkTheme: ThemeData(
          scaffoldBackgroundColor: AppColors.secondaryColor,

          appBarTheme: AppBarTheme(
              // color: AppColors.primaryColor,
              iconTheme: IconThemeData(color: AppColors.primaryColor)),
          primaryColor: Color(0xff202020),
          primaryColorDark: Color(0xff202020),

          // backgroundColor: Colors.transparent,
          // appBarTheme: AppBarTheme()
        ),

        // theme: ThemeData.dark(),
        // theme: ThemeData.dark(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        //  home: ,
        routes: {'/': (context) => BottomNavBar()},
      ),
    );
  }
}
