import 'package:device_preview/device_preview.dart';
import 'package:e_book_app/bmi_calc.dart';
import 'package:e_book_app/food_home_page.dart';
import 'package:e_book_app/list.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

main() {
  runApp(
    DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            home: MyListApp(),
          );
        }),
  );
}

// void main() {
//   runApp(MaterialApp(
//     home: BMICalculator(),
//   ));
// }
