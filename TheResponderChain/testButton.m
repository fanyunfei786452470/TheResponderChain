//
//  testButton.m
//  CALayerDemo
//
//  Created by 范云飞 on 2020/9/12.
//  Copyright © 2020 范云飞. All rights reserved.
//

#import "testButton.h"

@interface testButton ()<UIGestureRecognizerDelegate>

@end
@implementation testButton

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {

//        UITapGestureRecognizer * tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickGesture:)];
//        tapGesture.delegate = self;
//        [self addGestureRecognizer:tapGesture];

    }
    return self;
}

- (void)clickGesture:(UIGestureRecognizer *)gesture {
    NSLog(@"testButton click Gesture");
}

//- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
//    return YES;
//}

//- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
//    return NO;
//}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    NSLog(@"testButton---------touchesBegan");
    [super touchesBegan:touches withEvent:event];
}
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    NSLog(@"testButton---------touchesMoved");
    [super touchesMoved:touches withEvent:event];
}
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    NSLog(@"testButton---------touchesEnded");
    [super touchesEnded:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"testButton---------touchesCancelled");
    [super touchesCancelled:touches withEvent:event];
}


@end
