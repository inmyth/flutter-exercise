import 'package:flutter/material.dart';
import 'package:flutter_app/modules/FormExperience.dart';

class AddItemOnly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Add new work"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Mulai tambahkan pengalaman kerja Anda. ',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 22.0),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return FormExperience();
                  }));
                },
                child: Text('Start'),
              ),
            ],
          ),
          alignment: Alignment(0.0, 0.0),
        ),

      ),
    );
  }


}