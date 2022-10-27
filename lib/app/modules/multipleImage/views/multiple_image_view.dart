import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/multiple_image_controller.dart';

class MultipleImageView extends GetView<MultipleImageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MultipleImageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MultipleImageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
