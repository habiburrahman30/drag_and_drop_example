import 'package:drag_and_drop/src/config/base.dart';
import 'package:drag_and_drop/src/helpers/k_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../helpers/hex_color.dart';

class AddItem extends StatelessWidget with Base {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: KText(
          text: 'Add Item',
          fontSize: 18,
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: Obx(
        () => Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Name',
                  label: Text('Name'),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                  filled: true,
                  enabled: true,
                ),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Type',
                  label: Text('Type'),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                  filled: true,
                  enabled: true,
                ),
              ),
              SizedBox(height: 8),
              Row(
                children: dragAndDropC.type
                    .map(
                      (item) => GestureDetector(
                          // onTap: () => menuC.setCurrentIndex = item,
                          child: Row(
                        children: [
                          Radio(
                            onChanged: (v) {
                              dragAndDropC.selected.value = v!;
                            },
                            fillColor: MaterialStateProperty.all<Color?>(
                                hexToColor('#84BEF3')),
                            groupValue: dragAndDropC.selected.value,
                            value: item,
                          ),
                          KText(text: item),
                        ],
                      )),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.send),
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
      ),
    );
  }
}
