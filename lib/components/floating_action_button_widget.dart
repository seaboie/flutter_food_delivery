import 'package:flutter/material.dart';
import 'package:flutter_food_delivery/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return FloatingActionButton(
      onPressed: themeProvider.toggleTheme,
      child: themeProvider.isDarkMode
          ? const Icon(Icons.sunny)
          : const Icon(Icons.star_half),
    );
  }
}
