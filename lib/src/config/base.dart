// ignore_for_file: unused_import

import 'package:drag_and_drop/src/controllers/game_contriller.dart';
import 'package:get/get.dart';

import '../controllers/drag_and_drop_controller.dart';

class Base {
  final dragAndDropC = Get.put(DragAndDropController());
  final gameC = Get.put(GameController());
}
