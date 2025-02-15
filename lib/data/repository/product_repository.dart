import 'dart:convert';
import 'package:jayecommerce/core/helper/apiresponse.dart';
import 'package:jayecommerce/core/helper/jhttp.dart';
import 'package:jayecommerce/data/model/pagingrequest_model.dart';
import 'package:jayecommerce/data/model/product_model.dart';

abstract class ProductRepositoryAbstract {
  Future<ApiResponse<List<ProductModel>>> getListByID(
      String token, PagingRequestModel pagingRequestModel);
  Future<ProductModel> add(ProductModel productModel, String token);
  Future<ProductModel> Edit(ProductModel productModel, String token, String id);
  Future<ProductModel> Delete(String id, String token);
}

class ProductRepository implements ProductRepositoryAbstract {
  Future<ApiResponse<List<ProductModel>>> getListByID(
      String token, PagingRequestModel pagingRequestModel) async {
    ApiResponse<List<ProductModel>> apiResponse =
        ApiResponse<List<ProductModel>>();
    var response = await Jhttp.post(
        '/api/v1/product/getlist', token, pagingRequestModel.toJson());
    try {
      List<ProductModel> listProduct = [];
      if (response.statusCode == 200) {
        apiResponse.data =
            (jsonDecode(response.body)['data']) as List<ProductModel>;
      } else {
        apiResponse.data = listProduct;
        // apiResponse.errorMessage =
        //     Exception.GetErrorMessage(statusCode: response.statusCode);
      }
      if (apiResponse.data.isEmpty) {
        //response.statusCode = 2000;
        // apiResponse.errorMessage =
        //     Exception.GetErrorMessage(statusCode: response.statusCode);
      }
    } catch (ex) {
      //response.statusCode = 1000;
      // apiResponse.errorMessage = Exception.GetErrorMessage(
      //     statusCode: response.statusCode, errorMessage: ex.toString());
    }
    return apiResponse;
  }

  Future<ProductModel> add(ProductModel productModel, String token) async {
    ApiResponse<ProductModel> apiResponse = ApiResponse<ProductModel>();
    var response = await Jhttp.post(
        '/product', token, jsonEncode(ProductModel().toBodyJson(productModel)));
    if (response.statusCode == 200) {
      Map<String, dynamic> val = jsonDecode(response.body)['data'];
      productModel = ProductModel.fromJson(val);
    } else {
      apiResponse.data = productModel;
      // apiResponse.errorMessage =
      //     Exception.GetErrorMessage(statusCode: response.statusCode);
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
