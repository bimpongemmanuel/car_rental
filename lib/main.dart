import 'package:device_preview/device_preview.dart';
import 'package:fire_base_auth/auth/profile.dart';
import 'package:fire_base_auth/commons/nav.dart';
import 'package:fire_base_auth/navitems/carnav.dart';
import 'package:fire_base_auth/navitems/category.dart';
import 'package:fire_base_auth/navitems/homepage.dart';
import 'package:fire_base_auth/onboardingsscreen/onboarding.dart';
import 'package:fire_base_auth/splashview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
 main() { 
   runApp(
    DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => 
    MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home:const CarNav(),
    ))
  );
}

