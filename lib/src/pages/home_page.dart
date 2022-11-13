import 'dart:developer';

import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:drag_and_drop/src/helpers/k_text.dart';
import 'package:drag_and_drop/src/helpers/route.dart';
import 'package:drag_and_drop/src/models/product.dart';
import 'package:drag_and_drop/src/pages/add_item.dart';
import 'package:drag_and_drop/src/pages/game_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../controllers/drag_and_drop_controller.dart';
import '../helpers/hex_color.dart';

class HomePage extends StatelessWidget {
  final dragAndDropC = Get.put(DragAndDropController());
  @override
  Widget build(BuildContext context) {
    dragAndDropC.initProducts();
    return Scaffold(
      appBar: AppBar(
        title: Text('Drag and Drop'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Obx(
          () => Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      // height: 148,
                      // width: double.infinity,
                      margin: EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: hexToColor('#FFFFFF'),
                        border: Border.all(
                          width: 1,
                          color: hexToColor('#FFE9CF'),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 34,
                            width: double.infinity,
                            // color: hexToColor('#FFE9CF'),
                            decoration: BoxDecoration(
                              // borderRadius: BorderRadius.all(Radius.circular(5)),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                              ),
                              color: hexToColor('#FFE9CF'),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: 5, left: 15, top: 5),
                                  child: KText(
                                    text: 'Dhaka-Metro X-21345',
                                    fontSize: 16,
                                    color: hexToColor('#41525A'),
                                    bold: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          KText(
                                            text: 'Type: ',
                                            fontSize: 14,
                                            color: hexToColor('#80939D'),
                                            bold: false,
                                          ),
                                          Expanded(
                                            child: KText(
                                              text: 'Type',
                                              fontSize: 14,
                                              color: hexToColor('#41525A'),
                                              bold: false,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 2),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          KText(
                                            text: 'Capacity: ',
                                            fontSize: 14,
                                            color: hexToColor('#80939D'),
                                            bold: false,
                                            maxLines: 2,
                                          ),
                                          Row(
                                            children: [
                                              KText(
                                                text: '7 ',
                                                fontSize: 14,
                                                color: hexToColor('#41525A'),
                                                bold: false,
                                                maxLines: 2,
                                              ),
                                              KText(
                                                text: 'Ton',
                                                fontSize: 14,
                                                color: hexToColor('#41525A'),
                                                bold: false,
                                                maxLines: 2,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 2),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          KText(
                                            text: 'Brand: ',
                                            fontSize: 14,
                                            color: hexToColor('#80939D'),
                                            bold: false,
                                          ),
                                          Expanded(
                                            child: KText(
                                              text: 'brand',
                                              fontSize: 14,
                                              color: hexToColor('#41525A'),
                                              bold: false,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 2),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          KText(
                                            text: 'Driver: ',
                                            fontSize: 14,
                                            color: hexToColor('#80939D'),
                                            bold: false,
                                          ),
                                          Expanded(
                                            child: KText(
                                              text: 'driverFullname',
                                              fontSize: 14,
                                              color: hexToColor('#41525A'),
                                              bold: false,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 14, left: 5, bottom: 12, right: 0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.white60),
                                  child: Image.asset(
                                    'assets/images/truck.png',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                // RenderSvg(path: 'icon_bill'),
                                SizedBox(width: 5),
                                Row(
                                  children: [
                                    KText(
                                      text: 'BOQ ',
                                      fontSize: 14,
                                      color: hexToColor('#41525A'),
                                      bold: true,
                                    ),
                                    KText(
                                      text: '(Bill of Quantity)',
                                      fontSize: 14,
                                      color: hexToColor('#80939D'),
                                      bold: false,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            child: DottedLine(
                              lineThickness: 0.1,
                              dashColor: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            child: ListView.builder(
                              shrinkWrap: true,
                              primary: false,
                              itemCount: 2,
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  // onTap: () =>
                                  //     materialC.isExpanded.toggle(),
                                  child: Container(
                                    margin: EdgeInsets.only(top: 12),
                                    // height:
                                    //     materialC.isExpanded.value
                                    //         ? 200
                                    //         : 150,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: hexToColor('#DBECFB'),
                                          width: 2),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: Get.width,
                                          height: 40,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          decoration: BoxDecoration(
                                            color: hexToColor('#DBECFB'),
                                          ),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 6,
                                                child: KText(
                                                  text: 'product Name',
                                                  bold: true,
                                                ),
                                              ),
                                              Expanded(
                                                child: Icon(
                                                  Icons.arrow_circle_down_sharp,
                                                  color: hexToColor('#80939D'),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 10,
                                            right: 10,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              KText(
                                                text: 'Weight',
                                                fontSize: 15,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 70,
                                                    child: TextFormField(
                                                      inputFormatters: <
                                                          TextInputFormatter>[
                                                        FilteringTextInputFormatter
                                                            .digitsOnly
                                                      ],
                                                      readOnly: true,
                                                      keyboardType:
                                                          TextInputType.number,
                                                      initialValue: '20 Kg',
                                                      onChanged: (value) {
                                                        // if (value
                                                        //     .isNotEmpty) {
                                                        //   loadMaterialsToVehicleC
                                                        //       .updateItem(
                                                        //     item.id!,
                                                        //     UpdateLoadMaterialsToVehicleInputType
                                                        //         .quantity,
                                                        //     double.parse(
                                                        //         value),
                                                        //   );
                                                        // } else {
                                                        //   loadMaterialsToVehicleC
                                                        //       .updateItem(
                                                        //     item.id!,
                                                        //     UpdateLoadMaterialsToVehicleInputType
                                                        //         .quantity,
                                                        //     0.0,
                                                        //   );
                                                        // }
                                                      },
                                                      textAlign:
                                                          TextAlign.center,
                                                      decoration:
                                                          InputDecoration(
                                                        contentPadding:
                                                            EdgeInsets.all(0),
                                                        isDense: true,
                                                        // hintText: '19',
                                                        labelStyle: TextStyle(
                                                          color: hexToColor(
                                                              '#FF0000'),
                                                        ),
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: hexToColor(
                                                                '#DBECFB'),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  KText(
                                                    text: 'Kg',
                                                    fontSize: 15,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Divider(color: hexToColor('#DBECFB')),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 10,
                                            right: 10,
                                            bottom: 8,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              KText(
                                                text: 'Quantity',
                                                fontSize: 15,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 70,
                                                    child: TextFormField(
                                                      inputFormatters: <
                                                          TextInputFormatter>[
                                                        FilteringTextInputFormatter
                                                            .digitsOnly
                                                      ],
                                                      readOnly: true,
                                                      keyboardType:
                                                          TextInputType.number,
                                                      onChanged: (v) {},
                                                      textAlign:
                                                          TextAlign.center,
                                                      initialValue: 'pppp',
                                                      decoration:
                                                          InputDecoration(
                                                        contentPadding:
                                                            EdgeInsets.all(0),
                                                        isDense: true,
                                                        // hintText: '19',
                                                        labelStyle: TextStyle(
                                                            color: hexToColor(
                                                                '#FF0000')),
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: hexToColor(
                                                                '#DBECFB'),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  KText(
                                                    text: 'Pcs',
                                                    fontSize: 15,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            child: DottedBorder(
                              color: hexToColor('#FFE1BF'),
                              strokeWidth: 2,
                              dashPattern: [4, 4],
                              borderType: BorderType.RRect,
                              radius: Radius.circular(5),
                              child: Container(
                                height: 130,
                                width: double.infinity,
                                color: hexToColor('#FFFBF7'),
                                child: Center(
                                  child: KText(
                                    text: '(Drop Items Here)',
                                    color: hexToColor('#9BA9B3'),
                                  ),
                                ),

                                //background color of inner container
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    KText(
                      text: 'Loaded Data:',
                      bold: true,
                      fontWeight: FontWeight.w600,
                    ),
                    if (dragAndDropC.vehicleList.isNotEmpty)
                      ListView.builder(
                        itemCount: dragAndDropC.vehicleList.length,
                        shrinkWrap: true,
                        primary: false,
                        itemBuilder: (BuildContext context, int index) {
                          final item = dragAndDropC.vehicleList[index];
                          return Container(
                            margin: EdgeInsets.only(top: 12),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: hexToColor('#DBECFB'), width: 2),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: Get.width,
                                  height: 40,
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: hexToColor('#DBECFB'),
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 6,
                                        child: KText(
                                          text: '${item.title}',
                                          bold: true,
                                        ),
                                      ),
                                      Expanded(
                                        child: GestureDetector(
                                          onTap: () {
                                            dragAndDropC.vehicleList
                                                .removeWhere((item) =>
                                                    item.id == item.id);
                                          },
                                          child: Icon(
                                            Icons.delete_rounded,
                                            color: Colors.redAccent,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      KText(
                                        text: 'Weight',
                                        fontSize: 15,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 70,
                                            child: TextFormField(
                                              readOnly: true,
                                              keyboardType:
                                                  TextInputType.number,
                                              initialValue: '${item.weight}',
                                              onChanged: (value) {
                                                // if (value
                                                //     .isNotEmpty) {
                                                //   loadMaterialsToVehicleC
                                                //       .updateItem(
                                                //     item.id!,
                                                //     UpdateLoadMaterialsToVehicleInputType
                                                //         .quantity,
                                                //     double.parse(
                                                //         value),
                                                //   );
                                                // } else {
                                                //   loadMaterialsToVehicleC
                                                //       .updateItem(
                                                //     item.id!,
                                                //     UpdateLoadMaterialsToVehicleInputType
                                                //         .quantity,
                                                //     0.0,
                                                //   );
                                                // }
                                              },
                                              textAlign: TextAlign.center,
                                              decoration: InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.all(0),
                                                isDense: true,
                                                // hintText: '19',
                                                labelStyle: TextStyle(
                                                  color: hexToColor('#FF0000'),
                                                ),
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color:
                                                        hexToColor('#DBECFB'),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          KText(
                                            text: 'Kg',
                                            fontSize: 15,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Divider(color: hexToColor('#DBECFB')),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                    bottom: 8,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      KText(
                                        text: 'Quantity',
                                        fontSize: 15,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 70,
                                            child: TextFormField(
                                              inputFormatters: <
                                                  TextInputFormatter>[
                                                FilteringTextInputFormatter
                                                    .digitsOnly
                                              ],
                                              readOnly: true,
                                              keyboardType:
                                                  TextInputType.number,
                                              onChanged: (v) {},
                                              textAlign: TextAlign.center,
                                              initialValue: '${item.quantity}',
                                              decoration: InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.all(0),
                                                isDense: true,
                                                // hintText: '19',
                                                labelStyle: TextStyle(
                                                    color:
                                                        hexToColor('#FF0000')),
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color:
                                                        hexToColor('#DBECFB'),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          KText(
                                            text: '${item.quantityUom}',
                                            fontSize: 15,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    SizedBox(height: 20),
                    DragTarget<Product>(
                      onAccept: (v) {
                        dragAndDropC.vehicleList.add(v);
                        dragAndDropC.productList.remove(v);
                        print(v);
                      },
                      // onLeave: (receivedItem) {
                      //   print('object');
                      // },
                      // onWillAccept: (receivedItem) {
                      //   return true;
                      // },
                      builder: (context, acceptedItems, rejectedItem) =>
                          DottedBorder(
                        color: hexToColor('#FFE1BF'),
                        strokeWidth: 2,
                        dashPattern: [4, 4],
                        borderType: BorderType.RRect,
                        radius: Radius.circular(5),
                        child: Container(
                          height: 130,
                          width: double.infinity,
                          color: hexToColor('#FFFBF7'),
                          child: Center(
                            child: KText(
                              text: '(Drop Items Here)',
                              color: hexToColor('#9BA9B3'),
                            ),
                          ),

                          //background color of inner container
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    KText(
                      text: 'Data List:',
                      fontWeight: FontWeight.w600,
                    ),
                    if (dragAndDropC.productList.isNotEmpty)
                      ListView.builder(
                        itemCount: dragAndDropC.productList.length,
                        shrinkWrap: true,
                        primary: false,
                        itemBuilder: (BuildContext context, int index) {
                          final item = dragAndDropC.productList[index];
                          return LongPressDraggable(
                            data: item,
                            child: Container(
                              margin: EdgeInsets.only(top: 12),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: hexToColor('#DBECFB'), width: 2),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    width: Get.width,
                                    height: 40,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    decoration: BoxDecoration(
                                      color: hexToColor('#DBECFB'),
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 6,
                                          child: KText(
                                            text: '${item.title}',
                                            bold: true,
                                          ),
                                        ),
                                        Expanded(
                                          child: Icon(
                                            Icons.arrow_circle_down_sharp,
                                            color: hexToColor('#80939D'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 10,
                                      right: 10,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        KText(
                                          text: 'Weight',
                                          fontSize: 15,
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 70,
                                              child: TextFormField(
                                                readOnly: true,
                                                keyboardType:
                                                    TextInputType.number,
                                                initialValue: '${item.weight}',
                                                onChanged: (value) {
                                                  // if (value
                                                  //     .isNotEmpty) {
                                                  //   loadMaterialsToVehicleC
                                                  //       .updateItem(
                                                  //     item.id!,
                                                  //     UpdateLoadMaterialsToVehicleInputType
                                                  //         .quantity,
                                                  //     double.parse(
                                                  //         value),
                                                  //   );
                                                  // } else {
                                                  //   loadMaterialsToVehicleC
                                                  //       .updateItem(
                                                  //     item.id!,
                                                  //     UpdateLoadMaterialsToVehicleInputType
                                                  //         .quantity,
                                                  //     0.0,
                                                  //   );
                                                  // }
                                                },
                                                textAlign: TextAlign.center,
                                                decoration: InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.all(0),
                                                  isDense: true,
                                                  // hintText: '19',
                                                  labelStyle: TextStyle(
                                                    color:
                                                        hexToColor('#FF0000'),
                                                  ),
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          hexToColor('#DBECFB'),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            KText(
                                              text: 'Kg',
                                              fontSize: 15,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Divider(color: hexToColor('#DBECFB')),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 10,
                                      right: 10,
                                      bottom: 8,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        KText(
                                          text: 'Quantity',
                                          fontSize: 15,
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 70,
                                              child: TextFormField(
                                                inputFormatters: <
                                                    TextInputFormatter>[
                                                  FilteringTextInputFormatter
                                                      .digitsOnly
                                                ],
                                                readOnly: true,
                                                keyboardType:
                                                    TextInputType.number,
                                                onChanged: (v) {},
                                                textAlign: TextAlign.center,
                                                initialValue:
                                                    '${item.quantity}',
                                                decoration: InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.all(0),
                                                  isDense: true,
                                                  // hintText: '19',
                                                  labelStyle: TextStyle(
                                                      color: hexToColor(
                                                          '#FF0000')),
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          hexToColor('#DBECFB'),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            KText(
                                              text: '${item.quantityUom}',
                                              fontSize: 15,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            feedback: Container(
                              width: Get.width / 1.1,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(.4),
                                    spreadRadius: 1,
                                    blurRadius: 8.0,
                                    offset: Offset(0, 0),
                                  )
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: Get.width,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(4)),
                                    ),
                                    child: KText(
                                      text: 'Title (2)',
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        KText(text: 'Name: Habib'),
                                        KText(text: 'Type: User'),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                            childWhenDragging: Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: DottedBorder(
                                color: Colors.grey[200]!,
                                strokeWidth: 2,
                                dashPattern: [4, 4],
                                borderType: BorderType.RRect,
                                radius: Radius.circular(5),
                                child: Container(
                                  height: 100,
                                  width: double.infinity,
                                  color: Colors.grey[100]!,
                                ),
                              ),
                            ),
                            axis: Axis.vertical,
                          );
                        },
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          push(AddItem());
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: dragAndDropC.currentIndex.value,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.games),
              label: 'Games',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.safety_check_rounded),
              label: 'Gams',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.safety_check_rounded),
              label: 'Gams',
            ),
          ],
          onTap: (index) {
            dragAndDropC.currentIndex.value = index;

            switch (dragAndDropC.currentIndex.value) {
              case 0:
                push(GamePage());
                break;
              case 1:
                Container();
                break;
              case 2:
                Container();
                break;
              default:
            }
          },
        ),
      ),
    );
  }
}
