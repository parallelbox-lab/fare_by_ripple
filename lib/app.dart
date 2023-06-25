import 'package:fare_by_ripple/core/utils/routes.dart';
import 'package:fare_by_ripple/layers/presentation/splash/splash.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({ Key? key }) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      title: 'Fare by Ripple',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: SplashScreen.routeName,
      routes: routes,
      //home: ,
    );
  }
}