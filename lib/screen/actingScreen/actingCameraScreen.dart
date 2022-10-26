import 'dart:async';
import 'dart:io';
import 'package:KDT_SENTIMENTO/constants.dart';
import 'package:KDT_SENTIMENTO/screen/actingScreen/actingMain.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ActingCameraScreen extends StatefulWidget {
  ActingCameraScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _ActingCameraScreen createState() => _ActingCameraScreen();
}

class _ActingCameraScreen extends State<ActingCameraScreen> {
  File? _image;

  Future getImageFromCam() async {
    // for camera
    var image = await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      _image = File(image!.path);
    });
  }

  Future getImageFromGallery() async {
    // for gallery
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(image!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: <Widget>[
            Center(child: Text('학습자료에 합성할 사진을 업로드 해주세요')),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 380.0,
              padding: EdgeInsets.all(30.0),
              child: Center(
                child: _image == null
                    ? Text('No image selected.')
                    : Image.file(_image!),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 70.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FloatingActionButton(
                    backgroundColor: kPink,
                    onPressed: getImageFromCam,
                    tooltip: 'Pick Image',
                    child: Icon(Icons.add_a_photo),
                  ),
                  FloatingActionButton(
                    backgroundColor: kPink,
                    onPressed: getImageFromGallery,
                    tooltip: 'Pick Image',
                    child: Icon(Icons.wallpaper),
                  ),
                ],
              ),
            ),
            SizedBox(
              height:50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: kPink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => ActingMain())));
                },
                child: const Text('다음', ),
              ),
            )
          ],
        ));
  }
}
