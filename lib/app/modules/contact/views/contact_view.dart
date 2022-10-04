import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../contactDetails.dart';
import '../controllers/contact_controller.dart';

class ContactView extends GetView<ContactController> {
  @override
  Widget build(BuildContext context) {
    List<ContactDetails> usersDataList = controller.userDataList;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Obx(
              () => Text(
            '${controller.appName}',
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
             // Get.to(() => PostPage());
            },
            icon: const Icon(
              Icons.speaker_notes,
              color: Colors.black12,
              size: 35,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          IconButton(
            onPressed: () {
              controller.callBottomSheet();
            },
            icon: const Icon(
              Icons.add_outlined,
              color: Colors.black12,
              size: 35,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 55,
                  child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          focusColor: Colors.black12,
                          fillColor: Colors.black12,
                          focusedBorder: buildOutlineInputBorderBlue(),
                          enabledBorder: buildOutlineInputBorder(),
                          hintText: "Search",
                         // hintStyle: TextThemes.SearchBoxHintText,
                          prefixIcon: const Icon(
                            Icons.search_outlined,
                            color:  Colors.black12,
                            size: 25,
                          )),
                      onTap: () {}),
                ),
                usersDataList.isNotEmpty
                    ? Container(
                  padding: const EdgeInsets.only(top: 20),
                  height: 600,
                  child: Obx(()=>ListView.separated(
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                          width: 80,
                          child: Divider(
                            color:  Colors.black12,
                          ));
                    },
                    itemCount: controller.userDataList.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: 120,
                        child: ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/ecomerce1-7e7cd.appspot.com/o/users%2Fphoto-1633332755192-727a05c4013d.jpeg?alt=media&token=dbbbbc10-101e-44ac-8f02-3185f9616301',
                              fit: BoxFit.fitHeight,
                              height: 80,
                            ),
                          ),
                          title: Text(controller.userDataList[index].name,
                          ),
                          subtitle: Text(controller.userDataList[index].address,
                          ),
                        ),
                      );
                    },
                  ))
                )
                    : Container(
                  child: const Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        child: Text("No Contacts available"),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  OutlineInputBorder buildOutlineInputBorderBlue() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: Colors.blue),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return  OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        color: Colors.amberAccent,
      ),
    );
  }
}
