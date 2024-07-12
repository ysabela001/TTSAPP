import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ttsapp/firebase_options.dart';
import 'package:ttsapp/pages/acessorios_page.dart';
import 'package:ttsapp/pages/calcados_page.dart';
import 'package:ttsapp/pages/login_page.dart';
import 'package:ttsapp/pages/profile_page.dart';
import 'package:ttsapp/pages/register_page.dart';
import 'package:ttsapp/pages/vestimentas_page.dart';
import 'package:ttsapp/services/auth_provider.dart';
import 'pages/cart_page.dart';
import 'pages/intro_page.dart';
import 'pages/shop_page.dart';
import 'themes/theme_provider.dart';
import "package:provider/provider.dart";
import "models/shop.dart";

void main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => Shop()),
    ChangeNotifierProvider(create: (context) => ThemeProvider()),
     ChangeNotifierProvider(create: (context) => UserProvider()),

  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const IntroPage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
        routes: {
          '/intro_page':   (context) => const IntroPage(),
          '/shop_page':    (context) => const ShopPage(),
          '/cart_page':    (context) => const CartPage(),
          '/login_page':   (context) =>      LoginPage(),
          '/profile_page': (context) => const ProfilePage(),
          '/register_page': (context) => const RegisterPage(),
          '/calcados_page' : (context) => CalcadosPage(),
          "/vestimentas_page" : (context) => VestimentasPage(),
          "/acessorios_page" : (context) => AcessoriosPage()

        });
  }
}
