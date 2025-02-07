// import 'package:kitnimon/action/action.dart';
// import 'package:kitnimon/state/state.dart';

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

// KitnimonSearchState KitnimonSearchReducer(
//     KitnimonSearchState state, dynamic action) {
//   if (action is KitnimonSearch) {
//     return state.setValue(
//       startDate: action.startDate == DateTime.fromMillisecondsSinceEpoch(0)
//           ? state.startDate
//           : action.startDate,
//       endDate: action.endDate == DateTime.fromMillisecondsSinceEpoch(0)
//           ? state.endDate
//           : action.endDate,
//     );
//   }
//   return state;
// }

import 'package:jayecommerce/state/state.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState();
}
