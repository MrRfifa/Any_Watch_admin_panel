import 'package:admin_panel/constants/style.dart';
import 'package:admin_panel/controllers/menu_controller.dart';
import 'package:admin_panel/controllers/navigation_controller.dart';
import 'package:admin_panel/layout.dart';
import 'package:admin_panel/provider/message_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(MenuController());
  Get.put(NavigationController());
  await Firebase.initializeApp();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MessageProvider>(
          create: (context) => MessageProvider(),
        ),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Admin Panel',
        theme: ThemeData(
          scaffoldBackgroundColor: light,
          textTheme: GoogleFonts.mulishTextTheme(
            Theme.of(context).textTheme,
          ).apply(
            bodyColor: Colors.black,
          ),
          pageTransitionsTheme: const PageTransitionsTheme(
            builders: {
              TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
              TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
            },
          ),
          primaryColor: Colors.blue,
        ),
        home: SiteLayout(),
      ),
    );
  }
}
