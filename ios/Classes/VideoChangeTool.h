//
//  VideoChangeTool.h
//  movToMp4
//
//  Created by gongxiao on 2019/4/17.
//  Copyright © 2019 Lancet Technology Co. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVKit/AVKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface VideoChangeTool : NSObject
//+ (void)convertMovToMp4FromAVURLAsset:(AVURLAsset*)urlAsset andCompeleteHandler:(void(^)(NSURL *fileUrl))fileUrlHandler;

+(void)convertMovToMp4FromAVURL:(NSString *)fileurl andCompeleteHandler:(void(^)(NSURL *fileUrl))fileUrlHandler;
@end

NS_ASSUME_NONNULL_END
