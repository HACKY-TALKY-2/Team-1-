import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:namu/pages/main_page.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

final db = FirebaseFirestore.instance;

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              String textContent = '';
              return AlertDialog(
                title: const Text('나무에 남길 텍스트를 입력해주세요'),
                content: TextField(
                  onChanged: (text) {
                    textContent = text;
                  },
                ),
                actions: [
                  TextButton(
                    child: const Text('Cancel'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    child: const Text('OK'),
                    onPressed: () {
                      db.collection('station').doc("역삼").collection('board')
                      .add({
                        'emoji': "😀",
                        'like_num': 30,
                        'message': textContent,
                      });
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

