import 'dart:async';

import 'package:fare_by_ripple/layers/presentation/get_started/get_started.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);
  static String routeName = '/splash';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
    super.initState();
     Timer(
      const Duration(seconds: 5),
      () => Navigator.pushNamed(context, GetStarted.routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset('assets/images/logo.png',width: 150,)),
    );
  }
}