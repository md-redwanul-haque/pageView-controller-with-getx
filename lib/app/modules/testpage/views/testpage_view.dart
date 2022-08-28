import 'package:bd_gov_mochta_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/testpage_controller.dart';

class TestpageView extends GetView<TestpageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TestpageView'),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: (){
          Get.toNamed(Routes.WORK_PAGE);
        },
        child: Center(
          child: Text(
            'TestpageView is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
