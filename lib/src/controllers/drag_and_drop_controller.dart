import 'package:get/get.dart';

class DragAndDropController extends GetxController {
  final list = RxList<int>([1, 2, 3]);
  final list2 = RxList<int>([]);

  final type = RxList([
    'Male',
    'Female',
    'Others',
  ]);

  final selected = RxString('Male');
}
