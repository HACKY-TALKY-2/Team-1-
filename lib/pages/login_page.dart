import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:namu/controllers/auth_controller.dart';
import 'package:namu/widgets/tree_app_bar.dart';
import 'package:namu/pages/main_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(
            child: Center(
              child: Text(
                '🥳 환영합니다!',
                style: TextStyle(fontSize: 32),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                children: [
                  ElevatedButton(
                    child: const Text('Google로 로그인'),
                    onPressed: () async {
                      bool success = await controller.signInWithGoogle();
                      if (success) {
                        Get.off(MainPage());
                      }
                    },
                  ),
                  ElevatedButton(
                    child: const Text('익명으로 로그인'),
                    onPressed: () async {
                      bool success = await controller.signInAnonymously();
                      if (success) {
                        Get.off(MainPage());
                      }
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
