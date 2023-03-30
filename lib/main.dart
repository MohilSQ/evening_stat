import 'package:evening_stat/res/constant/constant.dart';
import 'package:evening_stat/routes/routes.dart';
import 'package:evening_stat/routes/routes_name.dart';
import 'package:evening_stat/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Utils.darkStatusBar();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
          title: Global.appName,
          getPages: Routes.pages,
          initialRoute: homeScreen,
          theme: ThemeData(textTheme: GoogleFonts.interTextTheme()),
        );
      },
    );
  }
}
