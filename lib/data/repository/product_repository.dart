import 'dart:convert';
import 'package:jayecommerce/core/helper/jhttp.dart';
import 'package:jayecommerce/data/model/pagingrequest_model.dart';
import 'package:jayecommerce/data/model/product_model.dart';

class ProductRepository {
  Future<List<ProductModel>> getListByID(
      String token, PagingRequestModel pagingRequestModel) async {
    try {
      var response = await Jhttp.post(
          '/api/v1/product/getlist', token, pagingRequestModel.toJson());
      List<ProductModel> listProduct = [];
      if (response.statusCode == 200) {
        return (jsonDecode(response.body)['data'])
            as Future<List<ProductModel>>;
      } else {
        return listProduct;
      }
    } catch (ex) {
      throw ex;
    }
  }

  Future<ProductModel> add(ProductModel productModel, String token) async {
    var response = await Jhttp.post(
        '/product', token, jsonEncode(ProductModel().toBodyJson(productModel)));
    if (response.statusCode == 200) {
      Map<String, dynamic> val = jsonDecode(response.body)['data'];
      productModel = ProductModel.fromJson(val);
    }
    return productModel;
  }

  Future<ProductModel> Edit(
      ProductModel productModel, String token, String id) async {
    var response = await Jhttp.put('/product' + "?id=" + id, token,
        jsonEncode(ProductModel().toBodyJson(productModel)));
    if (response.statusCode == 200) {
      Map<String, dynamic> val = jsonDecode(response.body)['data'];
      productModel = ProductModel.fromJson(val);
    }
    return productModel;
  }

  Future<ProductModel> Delete(String id, String token) async {
    var response = await Jhttp.delete('/product', token, "{\"id\": \"$id\"}");
    ProductModel productModel = ProductModel();
    if (response.statusCode == 200) {
      Map<String, dynamic> val = jsonDecode(response.body)['data'];
      productModel = ProductModel.fromJson(val);
    }
    return productModel;
  }
}
