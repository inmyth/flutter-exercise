import 'package:flutter/material.dart';
import 'package:flutter_app/modules/ProfileCompact.dart';
import 'package:flutter_app/modules/ProfileItems.dart';
import 'package:flutter_app/routes/Routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Kerah Biru Demo';

    return MaterialApp(
      title: appTitle,
      home: ProfileCompact(),
      routes:  {
        Routes.profile: (context) => ProfileCompact(),
        Routes.profileOld: (context) => ProfileItems()
      },
    );
  }
}


