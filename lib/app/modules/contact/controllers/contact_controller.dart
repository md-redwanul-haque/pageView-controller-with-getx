import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../contactDetails.dart';

class ContactController extends GetxController {
  var appName = ''.obs;
  var userDataList = <ContactDetails>[].obs;
  var userNameController = TextEditingController();
  var userAddressController = TextEditingController();
  var userPhoneNumberController = TextEditingController();
  var userEmailController = TextEditingController();

  @override
  void onInit() {
    appName.value = 'Contacts';
    super.onInit();
  }

  @override
  void dispose() {
    appName.close();
  }

  void callBottomSheet(){
    Get.bottomSheet(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Container(
              height: 400,
              padding: EdgeInsets.all(10),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              ),
              child: Column(
                children: [
                  Container(
                    // color: Colors.amber,
                    width: double.infinity,
                    height: 60,
                    child: const Center(child: Text('Add Username', style: TextStyle(fontSize: 18),)),
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    child: TextField(
                      controller: userNameController,
                      decoration: const InputDecoration(hintText: 'Enter username'),
                      onChanged: (v) {},
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    child: TextField(
                      controller: userPhoneNumberController,
                      decoration: const InputDecoration(hintText: 'Enter PhoneNumber'),
                      onChanged: (v) {},
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    child: TextField(
                      controller: userEmailController,
                      decoration: const InputDecoration(hintText: 'Enter Email'),
                      onChanged: (v) {},
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    child: TextField(
                      controller: userAddressController,
                      decoration: const InputDecoration(hintText: 'Enter Address'),
                      onChanged: (v) {},
                    ),
                  ),
                  Container(
                    // color: Colors.blue,
                    width: double.infinity,
                    height: 60,

                    child: ElevatedButton(
                      child: const Text(
                        'Insert Now',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.greenAccent,
                          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                          textStyle:
                          const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        if (userNameController.text.isEmpty ||
                            userPhoneNumberController.text.isEmpty ||
                            userAddressController.text.isEmpty) {
                          Get.snackbar(
                              'Failed',
                              'Data insert is unsuccessful',
                              snackPosition: SnackPosition.TOP,
                              backgroundColor:Colors.deepOrange
                          );

                        } else {
                          userDataList.add(ContactDetails(
                              phoneNumber: userPhoneNumberController.text,
                              name: userNameController.text,
                              email: userEmailController.text,
                              address: userAddressController.text));
                          userPhoneNumberController.clear();
                          userNameController.clear();
                          userEmailController.clear();
                          userAddressController.clear();

                          Get.snackbar(
                            'Success',
                            'Data inserted successful',
                            snackPosition: SnackPosition.BOTTOM,
                          );
                          Get.back();
                        }
                      },

                    ),
                  ),
                ],
              ),
            ),
          ),
        )

    );
  }

}
