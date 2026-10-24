import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'features/auth/pages/sign_in_page.dart';

void main() {
  runApp(const SchoolApp());
}

class SchoolApp extends StatelessWidget {
  const SchoolApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'School Management',
      theme: AppTheme.lightTheme,
      home: const SignInPage(),
    );
  }
}
