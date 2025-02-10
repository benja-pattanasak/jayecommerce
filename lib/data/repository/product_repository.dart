import 'dart:convert';
import 'package:jayecommerce/core/helper/jhttp.dart';
import 'package:jayecommerce/data/model/product_model.dart';
import 'package:jayecommerce/data/model/producttest_model.dart';

class ProductRepository {
  Future<List<ProducttestModel>> getListByID(String token, String id) async {
    try {
      var response = await Jhttp.Get('/product' + "?id=" + id, token);
      List<ProducttestModel> listProduct = [];
      if (response.statusCode == 200) {
        List<Map<String, dynamic>> listMapProduct =
            jsonDecode(response.body)['data'];
        listMapProduct.forEach((product) {
          listProduct.add(ProducttestModel.fromJson(product));
        });
      }
      return listProduct;
    } catch (ex) {
      throw ex;
    }
  }

  Future<ProductModel> add(ProductModel productModel, String token) async {
    var response = await Jhttp.Post(
        '/product', token, jsonEncode(ProductModel().toBodyJson(productModel)));
    if (response.statusCode == 200) {
      Map<String, dynamic> val = jsonDecode(response.body)['data'];
      productModel = ProductModel.fromJson(val);
    }
    return productModel;
  }

  Future<ProductModel> Edit(
      ProductModel productModel, String token, String id) async {
    var response = await Jhttp.Post('/product' + "?id=" + id, token,
        jsonEncode(ProductModel().toBodyJson(productModel)));
    if (response.statusCode == 200) {
      Map<String, dynamic> val = jsonDecode(response.body)['data'];
      productModel = ProductModel.fromJson(val);
    }
    return productModel;
  }

  Future<ProductModel> Delete(String id, String token) async {
    var response = await Jhttp.Post('/product', token, "{\"id\": \"$id\"}");
    ProductModel productModel = ProductModel();
    if (response.statusCode == 200) {
      Map<String, dynamic> val = jsonDecode(response.body)['data'];
      productModel = ProductModel.fromJson(val);
    }
    return productModel;
  }
}
