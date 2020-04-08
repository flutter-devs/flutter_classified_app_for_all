import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_scbfep/ui/view/dashboard.dart';
import 'package:flutter_scbfep/ui/view/sign_in.dart';

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'DashBoard',
        theme: ThemeData(
          fontFamily: 'Raleway',
          primarySwatch: Colors.green,
        ),
        home: SignIn());
  }
}
