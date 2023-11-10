import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:namu/controllers/station_controller.dart';

class TreeAppBar extends StatelessWidget {
  TreeAppBar({Key? key}) : super(key: key);

  final controller = Get.put(StationController());

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(
          height: 48,
        ),
        const Image(
          image: AssetImage('assets/sprout.png'),
          height: 180,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          margin: const EdgeInsets.only(bottom: 12),
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              Obx(
                () => LinearProgressIndicator(
                  minHeight: 12,
                  color: controller.station.value.color,
                  value: 123 / 1000,
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              Container(
                width: 72,
                height: 48,
                decoration: BoxDecoration(
                  color: controller.station.value.color,
                  borderRadius: BorderRadius.circular(24), // Rounded corners
                ),
                alignment: Alignment.center,
                child: const Text(
                  "56%",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Obx(
              () => Container(
                height: 24,
                color: controller.station.value.color,
              ),
            ),
            Container(
              width: 300.0, // Set the width
              height: 72.0, // Set the height
              decoration: BoxDecoration(
                color: Colors.white, // Background color of the container
                borderRadius: BorderRadius.circular(36), // Rounded corners
                border: Border.all(
                  color: Colors.green, // Color of the border
                  width: 10, // Thickness of the border
                ),
              ),
              child: const Center(
                child: Text(
                  '역삼역',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
