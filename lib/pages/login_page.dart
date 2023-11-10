import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:namu/controllers/auth_controller.dart';
import 'package:namu/fragment/board_list.dart';
import 'package:namu/pages/main_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BoardList()

      // Center(
      //   child: Row(
      //     children: [
      //       const BoardList(),
      //       ElevatedButton(
      //         child: Text('Sign in with Google'),
      //         onPressed: () async {
      //           bool success = await controller.signInWithGoogle();
      //           if (success) {
      //             Get.to(const MainPage(title: "서울나무공사"));
      //           }
      //         },
      //       ),
      //     ],
      //   ),
      // )
    );
  }
}
