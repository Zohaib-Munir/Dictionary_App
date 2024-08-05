import 'package:dictionary_app/screens/landing_screen.dart';
import 'package:dictionary_app/services/word_api.dart';
import 'package:dictionary_app/state/word_state_widget.dart';
import 'package:dictionary_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final WordApi apiService = WordApi();
    return WordStateWidget(
      apiService: apiService,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: appTheme,
        home: LandingScreen(),
      ),
    );
  }
}
