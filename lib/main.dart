import 'package:blueymc/screens/home/match/matchaddpage.dart';
import 'package:blueymc/screens/settings/settingcontents/theme/themedata.dart';
import 'package:blueymc/screens/settings/settingcontents/theme/themeprovider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ChangeNotifierProvider<ThemeProvider>(
      create: (_) => ThemeProvider()..initialize(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, provider, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: provider.themeMode,
        theme: ThemeClass.lightTheme,
        darkTheme: ThemeClass.darkTheme,
        home: MatchAddPage(),
      );
    });
  }
}
