import 'package:fare_by_ripple/layers/presentation/get_started/get_started.dart';
import 'package:fare_by_ripple/layers/presentation/splash/splash.dart';
import 'package:flutter/material.dart';

import '../../layers/presentation/auth_process/otp_view.dart';
import '../../layers/presentation/choose_auth_method/auth_method.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  GetStarted.routeName: (context) => const GetStarted(),
  AuthMethod.routeName: (context) => const AuthMethod(),
  OtpView.routeName: (context) => const OtpView()
  


};