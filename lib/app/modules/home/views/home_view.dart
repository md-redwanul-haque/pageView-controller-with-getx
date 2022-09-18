import 'package:bd_gov_mochta_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../dropDown.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Center(
              child: GestureDetector(
                onTap: (){
                  Get.toNamed(Routes.WORK_PAGE);
                },
                child: Text(
                  'homePage',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
           DropDownButtonFormFiled(controller: controller, list: controller.wards,item: controller.ward.value,),
          ],

        ),
      )

    );
  }
}


