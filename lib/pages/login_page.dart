import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_food_delivery/components/my_button.dart';
import 'package:flutter_food_delivery/components/my_text_field.dart';
import 'package:flutter_food_delivery/theme/theme_provider.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({
    super.key,
    this.onTap,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 25),
            Text(
              'Food Delivery App',
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 25),
            MyTextField(
              controller: emailController,
              hintText: 'Email address',
              obscureText: false,
            ),
            const SizedBox(height: 15),
            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),
            const SizedBox(height: 25),
            MyButton(
              text: 'Sign In',
              onTap: () {},
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member? ',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Register now',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
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
