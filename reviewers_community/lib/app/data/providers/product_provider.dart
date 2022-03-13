import 'package:flutx/icons/two_tone/two_tone_mdi_icons.dart';
import 'package:get/get.dart';

import '../models/product_model.dart';

class ProductProvider extends GetConnect {
  // @override
  // void onInit() {
    // httpClient.defaultDecoder = (map) {
    //   if (map is Map<String, dynamic>) return Product.fromJson(map);
    //   if (map is List)
    //     return map.map((item) => Product.fromJson(item)).toList();
    // };
    // httpClient.baseUrl = 'reviewers-community.herokuapp.com/products/';
  // }

  Future<List<dynamic>> getProducts(var limit, var offset) async {
    try{
      final response = await get('http://reviewers-community.herokuapp.com/products/?limit=$limit&offset=$offset');
      if (response.status.hasError) {
        return Future.error(response.statusText!);
      }else{
        return response.body['results'];
      }
    }
    catch(exception){
      return Future.error(exception.toString());
    }
  }

  Future<Product?> getProduct(int id) async {
    final response = await get('products/$id');
    return response.body;
  }


  Future<Response<Product>> postProduct(Product product) async {
    try
    {
      final response = await post('product', product);
      if (response.status.hasError) {
        return Future.error(response.statusText!);
      }else {
        return  response.body['result'];
      }
    }
    catch(exception)
    {
      return Future.error(exception.toString());
    }
  }


  Future<Response> deleteProduct(int id) async => await delete('products/$id');
}
