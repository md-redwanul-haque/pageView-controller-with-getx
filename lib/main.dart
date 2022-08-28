import 'package:bd_gov_mochta_app/app/themes.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hive/hive.dart';

import 'app/routes/app_pages.dart';


import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';




void main() async{
  await Hive.initFlutter();
  var createBox =await Hive.openBox('myBox');
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: Themes.lightTheme,
      themeMode: ThemeMode.light,

    ),
  );
}

