import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:prasad/Account.dart';
import 'package:prasad/Forgot.dart';
import 'package:prasad/Library.dart';
import 'package:prasad/YoutubePlayVideo.dart';
import 'package:prasad/login.dart';
import 'package:prasad/Tabs.dart';
import 'package:prasad/Notification.dart';
import 'package:prasad/Shorts.dart';
import 'package:prasad/Subs.dart';

import 'package:prasad/Youtube.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Tabs(),
        '/loginscreen': (context) => const YouTubeLoginScreen(),
        '/shorts': (context) => Shorts(),
        '/tabs': (context) => const Tabs(),
        '/forgotPassword': (context) => ForgotPasswordScreen(),
        '/library_screen': (context) => const Library(),
        '/Notification_screen': (context) => const Notifications(),
        '/Subscription': (context) => const Subscription(),
        '/creat_new_account': (context) => const CreateAccount(),
        '/youtube_screen': (context) => const Youtube(),
        '/youtubeplayvideo': (context) => const YoutubePlayVideo(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
