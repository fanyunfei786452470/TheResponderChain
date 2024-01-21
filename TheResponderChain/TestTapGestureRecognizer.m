//
//  TestTapGestureRecognizer.m
//  TheResponderChain
//
//  Created by 范云飞 on 2024/1/21.
//

#import "TestTapGestureRecognizer.h"

@implementation TestTapGestureRecognizer

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"TestTapGestureRecognizer---------touchesBegan");
    [super touchesBegan:touches withEvent:event];
}
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"TestTapGestureRecognizer---------touchesMoved");
    [super touchesMoved:touches withEvent:event];
}
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"TestTapGestureRecognizer---------touchesEnded");
    [super touchesEnded:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"TestTapGestureRecognizer---------touchesCancelled");
    [super touchesCancelled:touches withEvent:event];
}


@end
