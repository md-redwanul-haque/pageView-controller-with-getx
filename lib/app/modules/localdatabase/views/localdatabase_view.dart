import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/localdatabase_controller.dart';

class LocaldatabaseView extends GetView<LocaldatabaseController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LocaldatabaseView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'LocaldatabaseView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
