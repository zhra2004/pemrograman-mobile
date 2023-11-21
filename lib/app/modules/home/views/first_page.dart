import 'package:cake_baru/app/modules/home/views/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/auth_controller.dart';
import 'login_page.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});
  final AuthController _authController =
      Get.put(AuthController()); // Buat instance AuthController
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: _authController.isLoggedIn.value
          ? '/home'
          : '/login', // Set initial route based on login status
      getPages: [
        GetPage(name: '/login', page: () => LoginPage()),
        GetPage(name: '/home', page: () => Home()),
      ],
    );
  }
}
