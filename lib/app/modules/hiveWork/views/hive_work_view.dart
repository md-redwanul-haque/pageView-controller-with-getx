import 'package:flutter/material.dart';
import 'dart:io';

import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';

import '../controllers/hive_work_controller.dart';

class HiveWorkView extends GetView<HiveWorkController> {
  final ImagePicker _picker = ImagePicker();
  var number = 2 ;
  var valluk = 10;
  final _openBox =Hive.box('myBox');
  var imagePath = "".obs;
  //create
  void write(){
    _openBox.put('key1', 'Ass');
    _openBox.put('key2', ['apple','orange',1,7.6]);
    _openBox.put('key3', number);
    _openBox.put('key4', valluk);
  }

  //read
  void read(){
    print(_openBox.get('key1'));
    print(_openBox.get('key2'));
    print(_openBox.get('key3'));
    print(_openBox.get('key4'));
  }

  //delete
  void delete(){
    _openBox.delete('key1');
    _openBox.delete('key4');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('practice getx appbar'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(onPressed: write,
                  child: Text('create'),
                  color: Colors.redAccent,
                ),
                MaterialButton(onPressed: read,
                  child: Text('read'),
                  color: Colors.greenAccent,
                ),
                MaterialButton(onPressed: delete,
                  child: Text('delete'),
                  color: Colors.amberAccent,
                ),
              ],
            ),
            Obx(()=>imagePath.value.isEmpty?IconButton(
                onPressed: () {
                  _onImageButtonPressed(ImageSource.camera,
                      context: context);
                },
                icon: Icon(Icons.camera_alt,color:  (imagePath.value.isEmpty)?Colors.red:Colors.black,)):
            Image.file(File(imagePath.value), height: 100, width:100),
            ),


          ],
        ),
      ),
    );
  }
  static XFile? pickedFile;

  Future<void> _onImageButtonPressed(ImageSource source,
      {BuildContext? context}) async {
    try {
      pickedFile = await _picker.pickImage(source: source);
      if(pickedFile != null) {
        print("${pickedFile?.name}");
        print("${pickedFile?.path}");
        imagePath.value = "${pickedFile?.path}";
        controller.update();
        print("PATH + ${imagePath.value}");
      }
    } catch (e) {}
  }


}
