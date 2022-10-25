import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class MLService {
  Dio dio = Dio();

  // ml server
  // https://github.com/PuzzleLeaf/tensorflow_flask_api_server
  Future<String?> convertEmotionImage (Uint8List imageData) async {
    try {

      var encodedData = await compute(base64Encode, imageData);

      print('imageData');
      //chrome
      //Response response = await dio.post('http://localhost:5000/v1/image/classifymodel',

      //AndroidEmulator
      Response response = await dio.post('http://10.0.2.2:5000/v1/image/classifymodel',
          data: {
            'image': encodedData
          }
      );

      String result = response.data;
      return result;
    } catch (e) {
      print(e);
      print('error?');
      return null;
    }
  }
}

