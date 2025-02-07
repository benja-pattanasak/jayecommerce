import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:jayecommerce/screen/home_screen.dart';
import 'package:jayecommerce/state/state.dart';
import 'package:redux/redux.dart';

class SplashScreen extends StatelessWidget {
  final Store<AppState> store;
  SplashScreen({required this.store});
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
        store: store,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: AnimatedSplashScreen(
              duration: 1500,
              splash: Icon(
                Icons.temple_buddhist,
                color: Colors.white,
                size: 150,
              ),
              nextScreen: HomeScreen(),
              splashTransition: SplashTransition.fadeTransition,
              backgroundColor: Colors.orange),
          theme: ThemeData(
              primaryColor: Colors.orange,
              appBarTheme: AppBarTheme(color: Colors.orange)),
        ));
  }
}
