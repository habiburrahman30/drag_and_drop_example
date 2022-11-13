import 'package:drag_and_drop/src/models/product.dart';
import 'package:get/get.dart';

import '../helpers/uniqe_id.dart';

class DragAndDropController extends GetxController {
  final list = RxList<int>([1, 2, 3]);
  final list2 = RxList<int>([]);
  final currentIndex = RxInt(0);

  //--------------------------------
  final productList = RxList<Product>([]);
  final vehicleList = RxList<Product>([]);

  final type = RxList([
    'Male',
    'Female',
    'Others',
  ]);

  final selected = RxString('Male');

  //==================================
  initProducts() {
    productList.clear();
    productList.addAll(
      [
        Product(
          id: getUniqeId(),
          title: 'Product 1',
          weight: 1.5,
          quantity: 3,
          quantityUom: "Pcs",
        ),
        Product(
          id: getUniqeId(),
          title: 'Product 2',
          weight: 2.4,
          quantity: 52,
          quantityUom: "Pcs",
        ),
        Product(
          id: getUniqeId(),
          title: 'Product 3',
          weight: 5.2,
          quantity: 10,
          quantityUom: "Miter",
        ),
      ],
    );
  }
}
