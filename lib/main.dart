import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/screens/initial/initial.dart';
import 'package:portfolio/services/skills.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'models/skills_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GetSkills api = GetSkills();

  bool isLoaded = false;

  Future<List<Skill>> futureSkills;
  Future<List<DevTool>> futureDevTools;

  @override
  void initState() {
    super.initState();

    futureSkills = api.fetchSkills();
    futureDevTools = api.fetchDevTools();

    setState(() {
      isLoaded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoaded) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Franklin Osei',
        themeMode: ThemeMode.dark,
        darkTheme: Theme.of(context).copyWith(
          platform: TargetPlatform.android,
          scaffoldBackgroundColor: kbackgroundColor,
          primaryColor: kPrimaryColor,
          canvasColor: kbackgroundColor,
          textTheme: GoogleFonts.latoTextTheme(),
        ),
        builder: (context, widget) => ResponsiveWrapper.builder(
            ClampingScrollWrapper.builder(context, widget),
            defaultScale: true,
            breakpoints: [
              ResponsiveBreakpoint.resize(450, name: MOBILE),
              ResponsiveBreakpoint.resize(800, name: TABLET),
              ResponsiveBreakpoint.resize(1000, name: TABLET),
              ResponsiveBreakpoint.resize(1200, name: DESKTOP),
              ResponsiveBreakpoint.resize(2460, name: '4K')
            ],
            background: Container(
              color: kbackgroundColor,
            )),
        home: Initial(),
      );
    }

    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Franklin Osei',
      themeMode: ThemeMode.dark,
      darkTheme: Theme.of(context).copyWith(
        platform: TargetPlatform.android,
        scaffoldBackgroundColor: kbackgroundColor,
        primaryColor: kPrimaryColor,
        canvasColor: kbackgroundColor,
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      builder: (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget),
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(450, name: MOBILE),
            ResponsiveBreakpoint.resize(800, name: TABLET),
            ResponsiveBreakpoint.resize(1000, name: TABLET),
            ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            ResponsiveBreakpoint.resize(2460, name: '4K')
          ],
          background: Container(
            color: kbackgroundColor,
          )),
      home: Container(
        color: kbackgroundColor,
        // decoration: BoxDecoration(),
        child: Center(
          child: CircularProgressIndicator(
              // backgroundColor: kbackgroundColor,
              ),
        ),
      ),
    );
  }
}
