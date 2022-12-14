import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/payment_get_way_controller.dart';
import 'package:simple_item_selector/simple_item_selector.dart';

class PaymentGetWayView extends GetView<PaymentGetWayController> {
  const PaymentGetWayView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PaymentGetWayView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ItemSelector(
              direction: Direction.horizontal,
              activeBackgroundColor: Colors.amberAccent,
              inactiveBackgroundColor: Colors.grey[300],
              itemMargin: const EdgeInsets.all(2.0),
              itemPadding: const EdgeInsets.all(15.0),
              itemBorderRadius: const BorderRadius.all(Radius.circular(5.0)),
              itemsCount: 4, // should be <= items.length
              items: const [Text('a1'), Text('a2'), Text('a3'), Text('a4')], // any arbitrary widget list
              onSelected: (index) {
                // you can access selected item index here!
                print(index);
              },
            ),


          ],
        )
      ),
    );
  }
}
