import 'dart:io';
import 'dart:typed_data';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart'; // For File Upload To Firestore
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart'; // For Image Picker
import 'package:path/path.dart' as Path;
import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:demohoroapp/Components/BottomNav.dart';
import 'package:flushbar/flushbar.dart';

class PreviewScreen extends StatefulWidget{
  final String imgPath;


  PreviewScreen({this.imgPath});

  @override
  _PreviewScreenState createState() => _PreviewScreenState();

}
class _PreviewScreenState extends State<PreviewScreen>{
  Flushbar flush;
  String _uploadedFileURL;
  File _image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 51, 100),

      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Image.file(
                File(widget.imgPath),fit: BoxFit.contain,
              ),
            ),
            Container(
              color: Color.fromRGBO(0, 0, 51, 100),
              child: Padding(
                padding: const EdgeInsets.all(8.0),

                child: SnakeBar(),
              ),
            ),

          ],
        ),
      ),
    );
  }








  Future<ByteData> getBytesFromFile() async{
    Uint8List bytes = File(widget.imgPath).readAsBytesSync() as Uint8List;
    return ByteData.view(bytes.buffer);
  }
  Future uploadFile() async {
    FirebaseUser user = await FirebaseAuth.instance.currentUser();
    String fileName = user.email;
    StorageReference storageReference = FirebaseStorage.instance
        .ref()
        .child('palmscannerimages/${Path.basename(fileName)}');
    StorageUploadTask uploadTask = storageReference.putFile(File(widget.imgPath));
    await uploadTask.onComplete;
    print('File Uploaded');

    storageReference.getDownloadURL().then((fileURL) {
      setState(() {
        _uploadedFileURL = fileURL;
      });
    });
  }
}


class SnakeBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Color.fromRGBO(0, 0, 51, 100),
      onPressed: () {
        final snackBar = SnackBar(

          content: Text('Your Photo has uploaded'),
          action: SnackBarAction(
            label: 'Next',
            onPressed: () {

              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => bottomNavigationBar()),
                    (Route<dynamic> route) => false,
              );
            },
          ),
        );

        // Find the Scaffold in the widget tree and use
        // it to show a SnackBar.
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Text("Send",style: TextStyle(color: Colors.white,fontSize: 20),)
    );
  }
}
