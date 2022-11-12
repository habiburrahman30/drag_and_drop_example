import 'dart:ui';

import 'package:drag_and_drop/src/controllers/game_contriller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/item_model.dart';

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  final gameC = Get.put(GameController());

  @override
  void initState() {
    super.initState();
    gameC.initGame();
  }

  @override
  Widget build(BuildContext context) {
    if (gameC.items.length == 0) gameC.gameOver.value = true;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        title: Text('Matching Game'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Obx(
          () => Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Colors.black87,
                    width: 2,
                  ),
                ),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: "Score: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          )),
                      TextSpan(
                        text: "${gameC.score.value}",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              if (!gameC.gameOver.value)
                Row(
                  children: [
                    Column(
                        children: gameC.items.map((item) {
                      return Container(
                        margin: const EdgeInsets.all(8.0),
                        child: Draggable<ItemModel>(
                          data: item,
                          childWhenDragging: Icon(
                            item.icon,
                            color: Colors.grey,
                            size: 50.0,
                          ),
                          feedback: Icon(
                            item.icon,
                            color: Colors.teal,
                            size: 50,
                          ),
                          child: Icon(
                            item.icon,
                            color: Colors.teal,
                            size: 50,
                          ),
                        ),
                      );
                    }).toList()),
                    Spacer(),
                    Column(
                        children: gameC.items2.map((item) {
                      return DragTarget<ItemModel>(
                        onAccept: (receivedItem) {
                          if (item.value == receivedItem.value) {
                            setState(() {
                              gameC.items.remove(receivedItem);
                              gameC.items2.remove(item);
                              gameC.score.value += 10;
                              item.accepting = false;
                            });
                          } else {
                            setState(() {
                              gameC.score.value -= 5;
                              item.accepting = false;
                            });
                          }
                        },
                        onLeave: (receivedItem) {
                          setState(() {
                            item.accepting = false;
                          });
                        },
                        onWillAccept: (receivedItem) {
                          setState(() {
                            item.accepting = true;
                          });
                          return true;
                        },
                        builder: (context, acceptedItems, rejectedItem) {
                          return Container(
                            color: item.accepting ? Colors.red : Colors.teal,
                            height: 50,
                            width: 100,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(8.0),
                            child: Text(
                              item.name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                          );
                        },
                      );
                    }).toList()),
                  ],
                ),
              if (gameC.gameOver.value)
                Column(
                  children: [
                    SizedBox(height: 200),
                    Text(
                      "GameOver",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    ),
                    Center(
                      child: TextButton(
                        child: Text("New Game"),
                        onPressed: () {
                          gameC.initGame();
                          setState(() {});
                        },
                      ),
                    )
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
