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

class PreviewScreen extends StatefulWidget{
  final String imgPath;


  PreviewScreen({this.imgPath});

  @override
  _PreviewScreenState createState() => _PreviewScreenState();

}
class _PreviewScreenState extends State<PreviewScreen>{
  String _uploadedFileURL;
  File _image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Image.file(File(widget.imgPath),fit: BoxFit.contain,),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 60.0,
                color: Colors.black,
                child: Center(
                  child: Column(

                  children: <Widget>[
                    /*IconButton(
                      icon: Icon(Icons.share,color: Colors.white,),
                      onPressed: (){
                        getBytesFromFile().then((bytes){
                          Share.file('Share via', basename(widget.imgPath), bytes.buffer.asUint8List(),'image/path');
                        });
                      },

                    ),*/
                    IconButton(
                      icon: Icon(Icons.save,color: Colors.white,),
                      onPressed: (){
                        print("uploading file");
                        uploadFile();

                      },
                    ),
                  ],
                  )


                ),
              ),
            )
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