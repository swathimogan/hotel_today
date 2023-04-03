import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_today/screens/splash_screen.dart';
import 'package:hotel_today/screens/thank_you_screen.dart';
import 'package:hotel_today/screens/venice_hotel_details.dart';
import 'package:hotel_today/screens/venice_suite_details.dart';

import 'screens/booking_screen.dart';
import 'screens/homepage.dart';
import 'screens/settings_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1298, 978),
        minTextAdapt: true,
        splitScreenMode: true,
        builder:(context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(fontFamily: 'MS Reference Sans Serif'),
            title: 'Flutter Demo',
            // //theme: ThemeData(
            //   primarySwatch: Colors.blue,
            // ),
            home: SplashScreen(),
          );
    }
    );
  }
}


class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    // etc.
  };
}

