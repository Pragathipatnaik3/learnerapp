import 'package:flutter/material.dart';

import 'package:learnerapp/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ),
  );
}
