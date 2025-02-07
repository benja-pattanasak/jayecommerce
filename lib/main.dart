import 'package:flutter/material.dart';
import 'package:jayecommerce/reducer/reducer.dart';
import 'package:jayecommerce/screen/splash_screen.dart';
import 'package:jayecommerce/state/state.dart';
import 'package:redux/redux.dart';

void main() {
  final store = Store<AppState>(appReducer, initialState: AppState());
  runApp(SplashScreen(store: store));
}
