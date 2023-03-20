import 'package:evening_stat/res/constant/app_theme.dart';
import 'package:evening_stat/res/constant/constant.dart';
import 'package:evening_stat/utils/routes/routes.dart';
import 'package:evening_stat/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sizer/sizer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme().lightTheme,
          darkTheme: AppTheme().lightTheme,
          themeMode: ThemeMode.system,
          title: Global.appName,
          getPages: Routes.pages,
          initialRoute: homeScreen,
        );
      },
    );
  }
}
