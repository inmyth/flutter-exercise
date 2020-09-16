import 'dart:async';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart' as path;


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Upload Image To Firebase',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    var tempImage = await picker.getImage(source: ImageSource.gallery).then((pickedFile) {
      setState(() {
        _image = File(pickedFile.path);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Image Upload'),
        centerTitle: true,
      ),
      body: new Center(
        child: _image == null ? Text('Select an image') : enableUpload(),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Add Image',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget enableUpload() {
    return Container(
      child: Column(
        children: <Widget>[
          Image.file(_image, height: 300.0, width: 300.0),
          RaisedButton(
            elevation: 7.0,
            child: Text('Upload'),
            textColor: Colors.white,
            color: Colors.blue,
            onPressed: () {
              Firebase.initializeApp().then((value) {
                FirebaseAuth.instance.signInAnonymously().then((value) {
                  final StorageReference firebaseStorageRef = FirebaseStorage.instance.ref().child('flutter_example').child('${path.basename(_image.path)}');
                  final StorageUploadTask task =  firebaseStorageRef.putFile(_image);
                });

              });


            },
          )
        ],
      ),
    );
  }
}



//import 'dart:io';
//
//import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_storage/firebase_storage.dart';
//import 'package:flutter/material.dart';
//import 'package:image_picker/image_picker.dart';
//import 'package:path/path.dart' as path;
//
//class ImgOp extends StatefulWidget {
//  @override
//  _ImgOpState createState() => _ImgOpState();
//}
//
//class _ImgOpState extends State<ImgOp> {
//  File _image;
//  String _uploadedFileURL;
//  final picker = ImagePicker();
//
//  Future chooseFile() async {
//    await picker.getImage(source: ImageSource.gallery).then((pickedFile) {
//      setState(() {
//        _image = File(pickedFile.path);
//      });
//    });
//  }
//
//  Future uploadFile() async {
//    StorageReference storageReference = FirebaseStorage.instance
//        .ref()
//        .child('flutter_example/${path.basename(_image.path)}}');
//    StorageUploadTask uploadTask = storageReference.putFile(_image);
//    await uploadTask.onComplete;
//    print('File Uploaded');
//    storageReference.getDownloadURL().then((fileURL) {
//      setState(() {
//        _uploadedFileURL = fileURL;
//      });
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Firestore File Upload'),
//      ),
//      body: Center(
//        child: Column(
//          children: <Widget>[
//            Text('Selected Image'),
//            _image != null
//                ? Image.asset(
//              _image.path,
//              height: 150,
//            )
//                : Container(height: 150),
//            _image == null
//                ? RaisedButton(
//              child: Text('Choose File'),
//              onPressed: chooseFile,
//              color: Colors.cyan,
//            )
//                : Container(),
//            _image != null
//                ? RaisedButton(
//              child: Text('Upload File'),
//              onPressed: uploadFile,
//              color: Colors.cyan,
//            )
//                : Container(),
//            _image != null
//                ? RaisedButton(
//              child: Text('Clear Selection'),
//              onPressed: null,
//            )
//                : Container(),
//            Text('Uploaded Image'),
//            _uploadedFileURL != null
//                ? Image.network(
//              _uploadedFileURL,
//              height: 150,
//            )
//                : Container(),
//          ],
//        ),
//      ),
//    );
//  }
//}
//
//class FirebaseInit extends StatelessWidget {
//  // Create the initilization Future outside of `build`:
//  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
//
//  @override
//  Widget build(BuildContext context) {
//    return FutureBuilder(
//      // Initialize FlutterFire:
//      future: _initialization,
//      builder: (context, snapshot) {
//        // Check for errors
//        if (snapshot.hasError) {
//          print(snapshot.error);
//          return Text(snapshot.error.toString());
//        }
//
//        // Once complete, show your application
//        if (snapshot.connectionState == ConnectionState.done) {
//          return ImgOp();
//        }
//
//        // Otherwise, show something whilst waiting for initialization to complete
//         return CircularProgressIndicator();
//      },
//    );
//  }
//}
//
//void main() {
//  WidgetsFlutterBinding.ensureInitialized();
//  runApp(MaterialApp(
//    title: 'Shopping App',
//    home: FirebaseInit(),
//  ));
//}
