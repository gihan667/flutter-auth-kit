import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_auth/providers/dark_mode_provider.dart';
import 'package:flutter_auth/screens/login/login_screen.dart';
import 'package:flutter_auth/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkModeProvider darkModeProvider = new DarkModeProvider();

  @override
  void initState() {
    super.initState();

    getCurrentAppMode();
  }

  void getCurrentAppMode() async {
    darkModeProvider.darkMode = await darkModeProvider.darkModeHelper.getMode();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => darkModeProvider),
      ],
      child: Consumer<DarkModeProvider>(
        builder: (BuildContext context, value, child) {
          SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarBrightness: value.darkMode ? Brightness.light : Brightness.dark,
            statusBarIconBrightness: value.darkMode ? Brightness.light : Brightness.dark,
          ));
          
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Auth UI Kit',
            theme: themeData(context, value.darkMode),
            home: LoginScreen(),
          );
        }
      ),
    );
  }
}