//
//  UIButton+Extension.m
//  UIButtonDemo
//
//  Created by truekey on 2017/12/8.
//  Copyright © 2017年 Luyun. All rights reserved.
//

#import "LYButton+Extension.h"
#import <objc/runtime.h>

static char *BtnBlockIndentifier = "BtnBlockIndentifier";

@implementation UIButton(Extension)

+ (instancetype)block:(void(^)(UITouch*))block {
    return [UIButton btn:nil block:block];
}

+ (instancetype)btn:(NSString *)normal block:(void(^)(UITouch *))block {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    if (normal) {
        [btn setImage:[UIImage imageNamed:normal] forState:UIControlStateNormal];
    }
    
    if (block) {
        objc_setAssociatedObject(btn, BtnBlockIndentifier, block, OBJC_ASSOCIATION_COPY);
        [btn addTarget:btn action:@selector(btnClick:event:) forControlEvents:UIControlEventTouchUpInside];
    }
    return btn;
}

- (void)btnClick:(id)sender event:(id)event{
    void(^block)(UITouch *touch) = objc_getAssociatedObject(self, BtnBlockIndentifier);
    if (block) {
        NSSet *touches = [event allTouches];
        UITouch *touch = [touches anyObject];
        
        block(touch);
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
