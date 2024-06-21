import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sociout1/auth/auth_screen.dart';
import 'package:sociout1/screen/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:
          false, //property is used to control the visibility of the debug banner that appears in the top right corner of the app during development. it is set to true, which means the banner will be shown. You can set it to false to hide the banner.
      home: ScreenUtilInit(
          //flutter_screenutil package in Flutter that helps in adapting the UI layout to different screen sizes and resolutions.
          designSize: Size(375, 812),
          child: AuthPage()),
    );
  }
}
