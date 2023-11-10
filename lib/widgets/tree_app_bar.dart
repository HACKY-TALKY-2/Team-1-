import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:namu/controllers/station_controller.dart';
import 'package:namu/pages/history_page.dart';

class TreeAppBar extends StatelessWidget {
  TreeAppBar({Key? key}) : super(key: key);

  final controller = Get.find<StationController>();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(
          height: 48,
        ),
        Stack(
          children: [
            const Image(
              image: AssetImage('assets/sprout.png'),
              height: 180,
            ),
            ElevatedButton(
              child: Text("기록"),
              onPressed: () => {Get.to(HistoryPage())},
            )
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          margin: const EdgeInsets.only(bottom: 12),
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              GetBuilder<StationController>(
                builder: (_) => LinearProgressIndicator(
                  minHeight: 12,
                  color: controller.station.color,
                  value:
                      controller.station.guage / controller.station.max_guage,
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              Container(
                width: 72,
                height: 48,
                decoration: BoxDecoration(
                  color: controller.station.color,
                  borderRadius: BorderRadius.circular(24), // Rounded corners
                ),
                alignment: Alignment.center,
                child: GetBuilder<StationController>(
                  builder: (_) => Text(
                    "${controller.station.guage / controller.station.max_guage * 100}%",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 24,
              color: controller.station.color,
            ),
            Container(
              width: 300.0, // Set the width
              height: 72.0, // Set the height
              decoration: BoxDecoration(
                color: Colors.white, // Background color of the container
                borderRadius: BorderRadius.circular(36), // Rounded corners
                border: Border.all(
                  color: controller.station.color, // Color of the border
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
