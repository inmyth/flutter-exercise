import 'package:flutter/material.dart';
import 'package:flutter_app/widget/AppDrawer.dart';
import 'package:url_launcher/url_launcher.dart';

class Certificate extends StatelessWidget{
  static const String routeName = '/certificate';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Content(),
      drawer: AppDrawer(),
    );
  }
}

class Content extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
      child: ListView(
        children: [
          header,
        ],
      ),
    );
  }
}

var header = Padding(
    padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
    child: Column(
      children: <Widget>[
        SizedBox(
          height: 100 / 2,
        ),
        Text(
          'David Rahman',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 34.0),
        ),
        Text(
          'Jakarta, Indonesia',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: Colors.lightBlueAccent),
        ),
        SizedBox(
          height: 30.0,
        ),
        Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: 32.0),
          child: Text("Project Manager\n (Construction, Infrastructure)",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  height: 2.0,
                  fontSize: 16.0)),
        )
      ],
    ));
