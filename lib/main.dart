import 'package:calculator/home/home_page.dart';
import 'package:calculator/models/calculator_model.dart';
import 'package:calculator/themes/dark_theme.dart';
import 'package:calculator/themes/light_theme.dart';
import 'package:calculator/themes/theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dir = await getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  await Hive.openBox("Theme");
  Paint.enableDithering = true;
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    theme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Provider<Calculator>(
      create: (_) => Calculator(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Calculator',
        theme: lightTheme(),
        darkTheme: darkTheme(),
        home: HomePage(),
        themeMode: theme.current(),
      ),
    );
  }
}
