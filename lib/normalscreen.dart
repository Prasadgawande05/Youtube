import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prasad/controller/countcontroller.dart';

class normalScreen extends StatelessWidget {
  const normalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final normalcontroller controller = Get.put(normalcontroller());

    return Scaffold(
      appBar: AppBar(
        title: Text("Getx AppBar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  "Count: ${controller.count.value}",
                  style: TextStyle(fontSize: 24),
                )),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: controller.add,
              child: Text("Add with GetX"),
            ),
          ],
        ),
      ),
    );
  }
}
