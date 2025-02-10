import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:jayecommerce/config/app_setting.dart';
import 'package:jayecommerce/presentation/screen/home_screen.dart';
import 'package:jayecommerce/core/redux/state/state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
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
                MdiIcons.cart,
                color: AppSetting.AnimatedSplashScreen_Splash_Color(),
                size: 150,
              ),
              nextScreen: HomeScreen(),
              splashTransition: SplashTransition.fadeTransition,
              backgroundColor:
                  AppSetting.AnimatedSplashScree_BackgroundColor()),
          theme: ThemeData(
              primaryColor: AppSetting.ThemeData_PrimaryColor(),
              appBarTheme:
                  AppBarTheme(color: AppSetting.ThemeData_appBarTheme())),
        ));
  }
}
