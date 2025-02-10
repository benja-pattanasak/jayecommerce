class ProductModel {
  String productName;
  ProductModel({this.productName = ""});
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      productName: json["productName"],
    );
  }

  Map<String, dynamic> toJson() => {
        "productName": productName,
      };

  // Map<String, dynamic> toBodyJson() => {
  //       "productName": productName,
  //     };
  toBodyJson(ProductModel productModel) {
    return {
      "productName": productModel.productName,
    };
  }
}
