import 'package:flutter/material.dart';
import 'package:flutter_food_delivery/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      floatingActionButton: FloatingActionButton(
        child: themeProvider.isDarkMode
            ? const Icon(Icons.sunny)
            : const Icon(Icons.star_half),
        onPressed: () {
          themeProvider.toggleTheme();
        },
      ),
    );
  }
}
