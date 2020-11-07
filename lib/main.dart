import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_app/modules/ProfileItems.dart';
import 'package:flutter_app/routes/Routes.dart';
// import 'modules/MyCustomForm.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Kerah Biru Demo';

    return MaterialApp(
      title: appTitle,
      home: ProfileItems(),
      routes:  {
        Routes.profile: (context) => ProfileItems(),
      },
    );
  }
}


