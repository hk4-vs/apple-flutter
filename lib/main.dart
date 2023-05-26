import 'package:apple_store/screens/dashboard.dart';
import 'package:apple_store/themes/my_themes.dart';
import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      themes: <AppTheme>[
        AppTheme(
            id: "light",
            data: MyThemes.lightTheme(),
            description: "There is Light Theme"),
        AppTheme(
            id: "dark",
            description: "There is Dark Theme",
            data: MyThemes.darkTheme())
      ],
      child: ThemeConsumer(
        child: Builder(
          builder: (context) => MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeProvider.themeOf(context).data,
            home: const MyDashboard(),
          ),
        ),
      ),
    );
  }
}
