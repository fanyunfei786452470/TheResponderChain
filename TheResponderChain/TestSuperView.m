//
//  TestSuperView.m
//  CALayerDemo
//
//  Created by 范云飞 on 2020/9/12.
//  Copyright © 2020 范云飞. All rights reserved.
//

#import "TestSuperView.h"

@interface TestSuperView ()
<UIGestureRecognizerDelegate>


@end

@implementation TestSuperView


- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
//        UITapGestureRecognizer * doubleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(doubleClickGesture:)];
//        doubleTapGesture.numberOfTapsRequired = 2;
//        doubleTapGesture.delegate = self;
//        [self addGestureRecognizer:doubleTapGesture];
        
        UITapGestureRecognizer * tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickGesture:)];
        tapGesture.delegate = self;
        [self addGestureRecognizer:tapGesture];

//        UILongPressGestureRecognizer *longPressGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPressClickGesture:)];
//        longPressGesture.delegate = self;
//        [self addGestureRecognizer:longPressGesture];
//
//        [tapGesture requireGestureRecognizerToFail:longPressGesture];
        
        NSLog(@"TestSuperView.gestureRecognizers:::-------------%@",self.gestureRecognizers);
    }
    return self;
}

//- (void)testClick:(id)sender {
//    NSLog(@"click TestSuperView");
//}

- (void)clickGesture:(UIGestureRecognizer *)gesture {
    NSLog(@"TestSuperView click Gesture");
}

- (void)doubleClickGesture:(UIGestureRecognizer *)gesture {
    NSLog(@"TestSuperView double click Gesture");
}

- (void)longPressClickGesture:(UIGestureRecognizer *)gesture {
    NSLog(@"TestSuperView long press Gesture");
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    return YES;
}

//- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRequireFailureOfGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
//    if ([gestureRecognizer isKindOfClass:[UITapGestureRecognizer class]] && [otherGestureRecognizer isKindOfClass:[UITapGestureRecognizer class]] && ((UITapGestureRecognizer *)otherGestureRecognizer).numberOfTapsRequired == 2) {
//        return YES;
//    }
//    return NO;
//}

//- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldBeRequiredToFailByGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
//    if ([gestureRecognizer isKindOfClass:[UITapGestureRecognizer class]] && [otherGestureRecognizer isKindOfClass:[UITapGestureRecognizer class]] && ((UITapGestureRecognizer *)gestureRecognizer).numberOfTapsRequired == 2) {
//        return YES;
//    }
//    return NO;
//}

//- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
//    return YES;
//}
//
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
    return YES;
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    NSLog(@"TestSuperView---------touchesBegan");
    NSLog(@"TestSuperView.nextResponder:%@",self.nextResponder);
    [super touchesBegan:touches withEvent:event];
}
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    NSLog(@"TestSuperView---------touchesMoved");
    [super touchesMoved:touches withEvent:event];
}
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    NSLog(@"TestSuperView---------touchesEnded");
    [super touchesEnded:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"TestSuperView---------touchesCancelled");
    [super touchesCancelled:touches withEvent:event];
}


@end
