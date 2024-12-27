import 'package:flutter/material.dart';
import 'package:shopping_app_screen/pages/login_form_screen.dart';

import 'pages/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginFormScreen(),
    );
  }
}
