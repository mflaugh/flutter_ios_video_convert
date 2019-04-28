import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ios_video_convert/ios_video_convert.dart';

void main() {
  const MethodChannel channel = MethodChannel('ios_video_convert');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await IosVideoConvert.platformVersion, '42');
  });
}
