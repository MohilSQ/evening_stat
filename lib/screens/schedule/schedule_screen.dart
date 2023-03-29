import 'package:evening_stat/screens/schedule/schedule_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScheduleScreen extends GetView<ScheduleController> {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
    );
  }
}
