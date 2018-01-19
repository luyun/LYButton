//
//  UIButton+Extension.h
//  UIButtonDemo
//
//  Created by truekey on 2017/12/8.
//  Copyright © 2017年 Luyun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton(Extension)

+ (instancetype)block:(void(^)(UITouch*))block;
+ (instancetype)btn:(NSString *)normal block:(void(^)(UITouch *))block;
@end
