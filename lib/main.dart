import 'package:flutter/material.dart';
import 'package:jayecommerce/core/redux/reducer/reducer.dart';
import 'package:jayecommerce/presentation/screen/splash_screen.dart';
import 'package:jayecommerce/core/redux/state/state.dart';
import 'package:redux/redux.dart';

void main() {
  final store = Store<AppState>(appReducer, initialState: AppState());
  runApp(SplashScreen(store: store));
}
