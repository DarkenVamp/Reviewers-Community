import 'package:get/get.dart';
import 'package:reviewers_community/utils/Generator.dart';

class FaqController extends GetxController {
  //TODO: Implement FaqController
  var dataExpansionPanel = [false, true, false, false, false].obs;
  var content = [].obs;


  @override
  void onInit() {
    super.onInit();
    content.value = List.generate(5, (index) =>
        Generator.getParagraphsText(
            paragraph: 2, words: 24, noOfNewLine: 2, withHyphen: true));
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
