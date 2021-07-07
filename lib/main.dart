import 'package:ehliyet_kursu/screens/auth_screen_view.dart';
import 'package:ehliyet_kursu/screens/faq.dart';
import 'package:ehliyet_kursu/screens/pratical_panel.dart';
import 'package:ehliyet_kursu/screens/pratical_question.dart';
import 'package:ehliyet_kursu/screens/privacy_policy.dart';
import 'package:ehliyet_kursu/screens/real_question.dart';
import 'package:ehliyet_kursu/screens/real_test.dart';
import 'package:ehliyet_kursu/screens/results.dart';
import 'package:ehliyet_kursu/screens/road_signs.dart';
import 'package:ehliyet_kursu/screens/settings.dart';
import 'package:ehliyet_kursu/screens/test_history.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xFF6CB657),
        accentColor: Color(0xFF6CB657),
      ),
      home: AuthenticationWrapper(),
      routes: {
        PraticalPanel.routeName: (ctx) => PraticalPanel(),
        PraticalQuestion.routeName: (ctx) => PraticalQuestion(),
        Results.routeName: (ctx) => Results(),
        RoadSigns.routeName: (ctx) => RoadSigns(),
        RealTest.routeName: (ctx) => RealTest(),
        TestHistory.routeName: (ctx) => TestHistory(),
        Setting.routeName: (ctx) => Setting(),
        Faq.routeName: (ctx) => Faq(),
        PrivacyPolicy.routeName: (ctx) => PrivacyPolicy(),
        RealQuestion.routeName: (ctx) => RealQuestion(),
      },
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AuthScreenView();
  }
}
