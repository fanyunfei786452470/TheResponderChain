//
//  TestScrollView.m
//  CALayerDemo
//
//  Created by 范云飞 on 2020/9/12.
//  Copyright © 2020 范云飞. All rights reserved.
//

#import "TestScrollView.h"
#import "testButton.h"
#import "TestSubView.h"
#import "TestSuperView.h"

@implementation TestScrollView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        NSLog(@"TestScrollView.gestureRecognizers:::-------------%@",self.gestureRecognizers);
    }
    return self;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    NSLog(@"TestScrollView---------touchesBegan");
    NSLog(@"TestScrollView.nextResponder:%@",self.nextResponder);
    [self.nextResponder touchesBegan:touches withEvent:event];
    [super touchesBegan:touches withEvent:event];
}
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    NSLog(@"TestScrollView---------touchesMoved");
    [self.nextResponder touchesMoved:touches withEvent:event];
    [super touchesMoved:touches withEvent:event];
}
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    NSLog(@"TestScrollView---------touchesEnded");
    [self.nextResponder touchesEnded:touches withEvent:event];
    [super touchesEnded:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"TestScrollView---------touchesCancelled");
    [self.nextResponder touchesCancelled:touches withEvent:event];
    [super touchesCancelled:touches withEvent:event];
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    UIView * hitTestView = [super hitTest:point withEvent:event];
    if ([hitTestView isKindOfClass:[testButton class]]) {
        return hitTestView.superview.superview.superview.superview;
    }
    if ([hitTestView isKindOfClass:[TestSubView class]]) {
        return hitTestView.superview.superview.superview;
    }
    if ([hitTestView isKindOfClass:[TestSuperView class]]) {
        return hitTestView.superview.superview;
    }
    return hitTestView.superview;
}

@end
