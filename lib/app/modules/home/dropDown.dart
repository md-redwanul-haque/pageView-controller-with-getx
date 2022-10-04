import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/home_controller.dart';
class DropDownButtonFormFiled extends StatelessWidget {

  List list;
  var item;
   DropDownButtonFormFiled({
    Key? key,
    required this.controller,
    required this.list,
    required this.item,

  }) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
      CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Serial Number"
                ),
              )
            ),
            SizedBox(
              width: 4,
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: DropdownButtonFormField(
                  isExpanded: false,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                  ),
                  // hint: Text(controller
                  //     .localDatabasePresentUnionWardName
                  //     .value
                  //     .isEmpty
                  //     ? 'ওয়ার্ড নং নির্বাচন করুন'
                  //     : controller
                  //     .localDatabasePresentUnionWardName
                  //     .value),
                  hint: Text("Select Element"),
                  items: list.map((category) {
                    return DropdownMenuItem(
                        value: category,
                        child: Text(category,
                            style: Get.textTheme.labelMedium,
                            overflow: TextOverflow.ellipsis));
                  }).toList(),
                  onChanged: (newValue) {
                    item = newValue.toString();
                    print(item);
                    print(controller.time);
                    // controller
                    //     .localDatabasePresentUnionWardName
                    //     .value =
                    //     newValue
                    //         .toString();
                  },
                ))
              ),

          ],
        ),
      ],
    );


  }
}