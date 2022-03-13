import 'package:get/get.dart';

class ProfileController extends GetxController {
  //TODO: Implement ProfileController
  var uiLoading = false.obs;
  var user = null.obs;

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

  void logout (){}
}
