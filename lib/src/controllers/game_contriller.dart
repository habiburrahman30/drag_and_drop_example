import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../models/item_model.dart';

class GameController extends GetxController {
  final items = RxList<ItemModel>([]);
  final items2 = RxList<ItemModel>([]);

  final score = RxInt(0);
  final gameOver = RxBool(false);

  initGame() {
    gameOver.value = false;
    score.value = 0;
    items.addAll(
      [
        ItemModel(
          icon: FontAwesomeIcons.mugSaucer,
          name: "Coffee",
          value: "Coffee",
        ),
        ItemModel(
          icon: FontAwesomeIcons.dog,
          name: "dog",
          value: "dog",
        ),
        ItemModel(
          icon: FontAwesomeIcons.cat,
          name: "Cat",
          value: "Cat",
        ),
        ItemModel(
          icon: FontAwesomeIcons.cakeCandles,
          name: "Cake",
          value: "Cake",
        ),
        ItemModel(
          icon: FontAwesomeIcons.bus,
          name: "bus",
          value: "bus",
        ),
      ],
    );
    items2.addAll(List<ItemModel>.from(items));
    items.shuffle();
    items2.shuffle();
  }
}
