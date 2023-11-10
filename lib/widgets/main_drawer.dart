import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:namu/controllers/station_controller.dart';

class MainDrawer extends StatelessWidget {
  final controller = Get.put(StationController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: Obx(() => ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: controller.station.value.color,
                    ),
                    child: const Text(
                      '지하철 역 선택',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ] +
                controller.stations
                    .map((e) => ListTile(
                          title: Text(e),
                          onTap: () {},
                        ))
                    .toList())));
  }
}
