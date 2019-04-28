import 'dart:async';

import 'package:flutter/services.dart';

class IosVideoConvert {
  static const MethodChannel _channel =
      const MethodChannel('ios_video_convert');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String> videoConvert({String path}) async {
    final String mp4Path =  await _channel.invokeMethod("videoConvert", {'path':path});
    return mp4Path;
  }

}
