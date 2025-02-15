// import 'package:kitnimon/model/kitnimon_model.dart';

import 'package:jayecommerce/data/model/product_model.dart';

class TokenState {
  String? token;
  TokenState({this.token});
  TokenState setValue({String? token}) {
    return TokenState(token: token ?? this.token);
  }
}

class ProductListState {
  List<ProductModel> listProductModel;
  ProductListState({this.listProductModel = const []});
  ProductListState setValue({List<ProductModel>? listProductModel}) {
    return ProductListState(
        listProductModel: listProductModel ?? this.listProductModel);
  }
}
// class KitnimonState {
//   int? id;
//   DateTime? date;
//   int? numberMonks;
//   String? place;
//   int? typeID;
//   String? typeName;
//   int? tiemStartID;
//   String? tiemStartName;
//   int? typeVihicleID;
//   String? typeVihicleName;
//   int? distanct;
//   List<KitnimonModel>? listKitnimon;
//   String? isReceivedInvitation;
//   KitnimonState(
//       {this.id,
//       this.date,
//       this.numberMonks,
//       this.place,
//       this.typeID,
//       this.typeName,
//       this.tiemStartID,
//       this.tiemStartName,
//       this.typeVihicleID,
//       this.typeVihicleName,
//       this.distanct,
//       this.listKitnimon,
//       this.isReceivedInvitation});
//   KitnimonState setValue(
//       {int? id,
//       DateTime? date,
//       int? numberMonks,
//       String? place,
//       int? typeID,
//       String? typeName,
//       int? tiemStartID,
//       String? tiemStartName,
//       int? typeVihicleID,
//       String? typeVihicleName,
//       int? distanct,
//       List<KitnimonModel>? listKitnimon,
//       String? isReceivedInvitation}) {
//     return KitnimonState(
//       id: id ?? this.id,
//       date: date ?? this.date,
//       numberMonks: numberMonks ?? this.numberMonks,
//       place: place ?? this.place,
//       typeID: typeID ?? this.typeID,
//       typeName: typeName ?? this.typeName,
//       tiemStartID: tiemStartID ?? this.tiemStartID,
//       tiemStartName: tiemStartName ?? this.tiemStartName,
//       typeVihicleID: typeVihicleID ?? this.typeVihicleID,
//       typeVihicleName: typeVihicleName ?? this.typeVihicleName,
//       distanct: distanct ?? this.distanct,
//       listKitnimon: listKitnimon ?? this.listKitnimon,
//       isReceivedInvitation: isReceivedInvitation ?? this.isReceivedInvitation,
//     );
//   }
// }

// class AppState {
//   final KitnimonState kitnimonState;
//   final KitnimonSearchState kitnimonSearchState;
//   AppState({required this.kitnimonState, required this.kitnimonSearchState});
// }
class AppState {
  final ProductListState productListState;
  final TokenState tokenState;
  AppState({required this.productListState, required this.tokenState});
}
