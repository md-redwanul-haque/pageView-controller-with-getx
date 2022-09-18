import 'package:bd_gov_mochta_app/app/modules/workPage/controllers/work_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
class orangeWidget extends StatelessWidget {
  const orangeWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final WorkPageController controller;


  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.orange,child:Column(
      children: [
        Obx(()=>GestureDetector(
          onTap: (){
            controller.pageController.nextPage(duration: Duration(seconds: 1), curve: Curves.ease);

          },
          child: Text('${controller.car.value}'),),),
        Obx(()=>GestureDetector(
          onTap: (){
            controller.pageController.animateToPage(0,duration: Duration(seconds: 1), curve: Curves.ease);

          },
          child: Text('${controller.car.value}'),),),
      ],
    ) );
  }
}