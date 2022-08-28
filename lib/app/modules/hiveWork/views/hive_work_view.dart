import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../controllers/hive_work_controller.dart';

class HiveWorkView extends GetView<HiveWorkController> {
  var number = 2 ;
  var valluk = 10;
  final _openBox =Hive.box('myBox');
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
            )



          ],
        ),
      ),
    );
  }
}
