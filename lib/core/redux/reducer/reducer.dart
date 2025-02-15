import 'package:jayecommerce/core/redux/action/action.dart';
import 'package:jayecommerce/core/redux/state/state.dart';

// KitnimonState KitnimonReducer(KitnimonState state, dynamic action) {
//   if (action is KitnimonChangeValue) {
//     return state.setValue(
//       date: action.date == DateTime.fromMillisecondsSinceEpoch(0)
//           ? state.date
//           : action.date,
//       distanct: action.distanct == 0 ? state.distanct : action.distanct,
//       numberMonks:
//           action.numberMonks == 0 ? state.numberMonks : action.numberMonks,
//       place: action.place == "" ? state.place : action.place,
//       tiemStartID:
//           action.tiemStartID == 0 ? state.tiemStartID : action.tiemStartID,
//       typeID: action.typeID == 0 ? state.typeID : action.typeID,
//       typeVihicleID: action.typeVihicleID == 0
//           ? state.typeVihicleID
//           : action.typeVihicleID,
//       listKitnimon:
//           action.listKitnimon == [] ? state.listKitnimon : action.listKitnimon,
//       id: action.id == 0 ? state.id : action.id,
//       isReceivedInvitation: action.isReceivedInvitation == ""
//           ? state.isReceivedInvitation
//           : action.isReceivedInvitation,
//     );
//   }
//   if (action is KitnimonChangeValueNotSetOldValue) {
//     return state.setValue(
//       date: action.date,
//       distanct: action.distanct,
//       numberMonks: action.numberMonks,
//       place: action.place,
//       tiemStartID: action.tiemStartID,
//       tiemStartName: action.tiemStartName,
//       typeID: action.typeID,
//       typeName: action.typeName,
//       typeVihicleID: action.typeVihicleID,
//       typeVihicleName: action.typeVihicleName,
//       listKitnimon: action.listKitnimon,
//       id: action.id,
//       isReceivedInvitation: action.isReceivedInvitation,
//     );
//   }
//   return state;
// }

TokenState TokenReducer(TokenState state, dynamic action) {
  if (action is GetTokenAction) {
    return state.setValue(token: state.token);
  }
  return state;
}

ProductListState ProductListReducer(ProductListState state, dynamic action) {
  if (action is ProductListChangeValue) {
    return state.setValue(listProductModel: state.listProductModel);
  }
  return state;
}

AppState appReducer(AppState state, dynamic action) {
  return AppState(
      productListState: ProductListReducer(state.productListState, action),
      tokenState: TokenReducer(state.tokenState, action));
}
