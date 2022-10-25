import 'dart:io';
import 'package:image/image.dart' as img;
import 'package:flutter/material.dart';
import 'dart:typed_data';
import 'package:image_picker/image_picker.dart';
import 'package:KDT_SENTIMENTO/screen/emotionScreen/ml/classifier_emotion.dart';
import 'package:logger/logger.dart';
import '../../constants.dart';
import '../../theme.dart';


class emotionLearn extends StatefulWidget {
  emotionLearn({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _emotionLearn createState() => _emotionLearn();
}

class _emotionLearn extends State<emotionLearn> {
  MLService _mlService = MLService();
  //FilePickerService _filePickerService = FilePickerService();
  var logger = Logger();

  File? _image;
  final picker = ImagePicker();

  Image? _imageWidget;

  img.Image? fox;
  Uint8List? imageData;
  var category;

  @override
  void initState() {

    super.initState();
    // _classifier = ClassifierEmotion();
  }

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      _image = File(pickedFile!.path);
      _imageWidget = Image.file(_image!);
      imageData = _image!.readAsBytesSync();
      _predict();
      // print(this.category);
    });
  }

  void _predict() async {
    //img.Image imageInput = img.decodeImage(_image!.readAsBytesSync())!;
    //
    // // imageInput = defaultImage!;
    var pred = await _mlService.convertEmotionImage(imageData!);
    setState(() {
       this.category = pred;
     });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 36,
          ),
          Text.rich(
            TextSpan(
              text: 'Q 슬픈 표정을 지어주세요!',
              style: textTheme().headline1?.copyWith(
                  color: kSecondaryColor,
                  fontSize: 25,fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 36,
          ),
          LoadingImage(imageData),
          SizedBox(
            height: 36,
          ),
          ElevatedButton.icon(
              onPressed:getImage,
              icon:  Icon(Icons.add_a_photo),
              label: Text("사진을 촬영해 주세요!",style: textTheme().headline2?.copyWith(
                  fontSize: 25,fontWeight: FontWeight.bold),),
              style: ElevatedButton.styleFrom(primary: kPrimaryColor),
            ),
          SizedBox(
            height: 36,
          ),
          Text.rich(
            TextSpan(
              text: category == 'sad'
                  ? '정답입니다!'
                  : '',
              style: textTheme().headline1?.copyWith(
                  color: kPurple,fontSize: 30,fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    )
    );
  }

  Widget LoadingImage(Uint8List? imageData) {
    if (imageData == null) {
      return Center(
        child: Container(
          child: Text(
            '',
            style: TextStyle(
              fontSize: 18,
              color: kSecondaryColor,
            ),
          ),
        ),
      );
    } else if (imageData.length == 0) {
      return Center(
        child: Column(
          children: [
            CircularProgressIndicator(),
            SizedBox(
              height: 5,
            ),
            Text('Loading'),
          ],
        ),
      );
    } else {
      return Image.memory(
        imageData,
        fit: BoxFit.fitWidth,
        height: 300,
        width: 300,
      );
    }
  }
}