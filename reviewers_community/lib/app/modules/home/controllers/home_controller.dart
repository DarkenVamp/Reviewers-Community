import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  var selectedCategory = 0.obs;
  var currentIndex = 0.obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  void setCurrentIndex(index){
    currentIndex.value = index;
  }
}
