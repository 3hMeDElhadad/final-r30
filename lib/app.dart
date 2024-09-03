import 'package:commerce/core/config/config.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, ch) => DismissKeyboard(
        child: DevicePreview(builder: (context) => const MyApp()),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          debugShowCheckedModeBanner: false,
          theme: CoreThemeData.defaultTheme,
          initialRoute: RoutesName.initial,
          onGenerateRoute: AppRoute.generate,
        );
  }
}
