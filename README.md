# flutter_ios_video_convert
flutter plugin to ios mov convert mp4

ios_video_convert: #ios视频格式转换 mov to mp4
    git: git://github.com/mflaugh/flutter_ios_video_convert.git

import 'package:ios_video_convert/ios_video_convert.dart';

if( Platform.isIOS ){
    String videoPath = file.path.substring(7);
    IosVideoConvert.videoConvert(path:videoPath).then((value){
      value = value.substring(7);
      debugPrint(value);
    });
}