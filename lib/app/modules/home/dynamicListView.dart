import 'package:flutter/material.dart';

import 'controllers/home_controller.dart';

class DynamicItenToListView extends StatelessWidget {
  const DynamicItenToListView({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          TextFormField(),
          TextFormField(),
        ],
      )
    );
  }
}
