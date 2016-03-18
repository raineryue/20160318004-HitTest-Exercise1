//
//  RedView.m
//  20160318004-HitTest-Exercise1
//
//  Created by Rainer on 16/3/18.
//  Copyright © 2016年 Rainer. All rights reserved.
//

#import "RedView.h"

@interface RedView()

@property (nonatomic, strong) IBOutlet UIButton *blueButton;

@end

@implementation RedView

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    // 获取按钮的点
    CGPoint blueButtonPoint = [self convertPoint:point toView:self.blueButton];
    
    // 判断该点是否在按钮视图上：如果是则返回按钮视图，如果不是则返回父视图
    if ([self.blueButton pointInside:blueButtonPoint withEvent:event]) {
        return self.blueButton;
    } else {
        return [super hitTest:point withEvent:event];
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%s", __func__);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
