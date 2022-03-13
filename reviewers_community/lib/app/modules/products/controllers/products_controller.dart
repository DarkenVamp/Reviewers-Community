import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reviewers_community/app/data/providers/product_provider.dart';

import '../../../data/models/product_model.dart';

class ProductsController extends GetxController with StateMixin<List<dynamic>>{
  //TODO: Implement ProductsController
  var listProduct = List<dynamic>.empty(growable: true).obs;
  var limit = 20;
  var offset = 0;
  var isDataProcessing = false.obs;

  // For Pagination
  ScrollController scrollController = ScrollController();
  var isMoreDataAvailable = true.obs;

  @override
  void onInit() async {
    super.onInit();
    print("In Products Controller");

    // Fetch Data
    getProducts(limit, offset);
    print(listProduct);
    //For Pagination
    paginateProducts();

  }


  // Fetch Data
  void getProducts(var limit, var offset) {
    try {
      isMoreDataAvailable(false);
      isDataProcessing(true);
      ProductProvider().getProducts(limit, offset).then((resp) {
        isDataProcessing(false);
        listProduct.addAll(resp);
      }, onError: (err) {
        isDataProcessing(false);
        showSnackBar("Error", err.toString(), Colors.red);
      });
    } catch (exception) {
      isDataProcessing(false);
      showSnackBar("Exception", exception.toString(), Colors.red);
    }
  }

  // common snack bar
  showSnackBar(String title, String message, Color backgroundColor) {
    Get.snackbar(title, message,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: backgroundColor,
        colorText: Colors.white);
  }

  // For Pagination
  void paginateProducts() {
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        print("reached end");
        offset+=limit;
        getMoreTask(limit, offset);
      }
    });
  }

  // Get More data
  void getMoreTask(var limit, var offset) {
    try {
      ProductProvider().getProducts(limit, offset).then((resp) {
        if (resp.isNotEmpty) {
          isMoreDataAvailable(true);
        } else {
          isMoreDataAvailable(false);
          showSnackBar("Message", "No more items", Colors.lightBlueAccent);
        }
        listProduct.addAll(resp);
      }, onError: (err) {
        isMoreDataAvailable(false);
        showSnackBar("Error", err.toString(), Colors.red);
      });
    } catch (exception) {
      isMoreDataAvailable(false);
      showSnackBar("Exception", exception.toString(), Colors.red);
    }
  }

  // Refresh List
  void refreshList() async {
    offset = 0;
    getProducts(limit, offset);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
