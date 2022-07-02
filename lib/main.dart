import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/bindings/on_boarding_bindings.dart';
import 'core/config/app_constants.dart';
import 'core/utils/routes/app_pages.dart';
import 'core/utils/theme/custom_theme_data.dart';

void main() {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: HomeBindings(),
      initialRoute: AppPages.initial,
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      theme: CustomTheme.lightTheme,
      title: Constants.appTitle,
    );
  }
}
