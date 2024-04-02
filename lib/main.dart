import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/utils/app_strings.dart';
import 'package:health_app/utils/route_generator.dart';
import 'package:health_app/utils/screen_bindings.dart';
import 'package:health_app/views/screens/home/home/home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home: HomeScreen(),
      initialBinding: ScreenBindings(),
      initialRoute: kHomescreen,
      getPages: RouteGenerator.getPages(),
    );
  }
}
