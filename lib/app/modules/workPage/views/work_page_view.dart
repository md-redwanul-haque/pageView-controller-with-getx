import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../orangePage.dart';
import '../controllers/work_page_controller.dart';


class WorkPageView extends GetView<WorkPageController> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Work Page View'),
        centerTitle: true,
      ),
      body: PageView(
        controller: controller.pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Container(color: Colors.blue,child: Obx(()=>GestureDetector(onTap:(){
            controller.pageController.nextPage(duration: Duration(seconds: 1), curve: Curves.ease);
          },child: Text('${controller.car.value}')),)),
          orangeWidget(controller: controller,),
          Container(color: Colors.green,child: Obx(()=>Text('${controller.car.value}'),)),



        ],
      )
    );
  }
}




