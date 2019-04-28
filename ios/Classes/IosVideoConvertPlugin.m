#import "IosVideoConvertPlugin.h"
#import "VideoChangeTool.h"

@implementation IosVideoConvertPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"ios_video_convert"
            binaryMessenger:[registrar messenger]];
  IosVideoConvertPlugin* instance = [[IosVideoConvertPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getPlatformVersion" isEqualToString:call.method]) {
    result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
  } if([@"videoConvert" isEqualToString:call.method]){
      [VideoChangeTool convertMovToMp4FromAVURL:call.arguments[@"path"] andCompeleteHandler:^(NSURL * _Nonnull fileUrl) {
          result(fileUrl.absoluteString);
      }];
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
