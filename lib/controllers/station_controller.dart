import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

final db = FirebaseFirestore.instance;

class Station {
  Color color = Color(0xFFFFFFFF);
  String current_tree_image_type = "";
  String current_tree_msg = "";
  String current_tree_name = "";
  int max_guage = 0;
  int guage = 0;
  double lng = 0;
  double lat = 0;
}

class StationController extends GetxController {
  var name = "역삼".obs;
  var station = Station().obs;
  var stations = <String>[].obs;

  @override
  void onInit() {
    super.onInit();

    db.collection("station").get().then((event) {
      stations.value = event.docs.map((doc) => doc.id).toList();
      update();
    });

    db.collection("station").doc(name.value).get().then((event) {
      if (event.exists) {
        station.value.color = Color(0xFF000000 + event.data()!["color"] as int);
        station.value.current_tree_image_type =
            event.data()!["current_tree_image_type"] as String;
        station.value.current_tree_msg =
            event.data()!["current_tree_msg"] as String;
        station.value.current_tree_name =
            event.data()!["current_tree_name"] as String;
        station.value.max_guage = event.data()!["max_guage"] as int;
        station.value.guage = event.data()!["guage"] as int;
        station.value.lng = event.data()!["lng"] as double;
        station.value.lat = event.data()!["lat"] as double;
        update();
      }
    });
  }
}
