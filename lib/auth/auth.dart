import 'package:flutter/material.dart';
import 'package:flutter_food_delivery/pages/login_page.dart';
import 'package:flutter_food_delivery/pages/register_page.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {

  bool isShowLoginPage = true;

  void togglePage() {
    setState(() => isShowLoginPage = !isShowLoginPage);
  }

  @override
  Widget build(BuildContext context) {
    return isShowLoginPage ? LoginPage(onTap: togglePage) : RegisterPage(onTap: togglePage);
  }
}