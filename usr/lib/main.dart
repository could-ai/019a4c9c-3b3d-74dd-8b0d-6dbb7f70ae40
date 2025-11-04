import 'package:flutter/material.dart';
import 'package:couldai_user_app/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'مستشار قصات الشعر',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontFamily: 'Tajawal'),
          bodyMedium: TextStyle(fontFamily: 'Tajawal'),
          displayLarge: TextStyle(fontFamily: 'Tajawal'),
          displayMedium: TextStyle(fontFamily: 'Tajawal'),
          displaySmall: TextStyle(fontFamily: 'Tajawal'),
          headlineMedium: TextStyle(fontFamily: 'Tajawal'),
          headlineSmall: TextStyle(fontFamily: 'Tajawal'),
          titleLarge: TextStyle(fontFamily: 'Tajawal'),
          titleMedium: TextStyle(fontFamily: 'Tajawal'),
          titleSmall: TextStyle(fontFamily: 'Tajawal'),
          bodySmall: TextStyle(fontFamily: 'Tajawal'),
          labelLarge: TextStyle(fontFamily: 'Tajawal'),
          labelSmall: TextStyle(fontFamily: 'Tajawal'),
        ),
      ),
      home: const Directionality(
        textDirection: TextDirection.rtl,
        child: HomeScreen(),
      ),
    );
  }
}
