class ProducttestModel {
  String? productname;
  int? totalsales;

  ProducttestModel({this.productname, this.totalsales});

  ProducttestModel.fromJson(Map<String, dynamic> json) {
    productname = json['productname'];
    totalsales = json['totalsales'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productname'] = this.productname;
    data['totalsales'] = this.totalsales;
    return data;
  }
}
