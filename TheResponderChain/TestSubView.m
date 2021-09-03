//
//  TestSubView.m
//  CALayerDemo
//
//  Created by 范云飞 on 2020/9/12.
//  Copyright © 2020 范云飞. All rights reserved.
//

#import "TestSubView.h"

#import "testButton.h"
@interface TestSubView () <UIGestureRecognizerDelegate>

@end

@implementation TestSubView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI {

    UITapGestureRecognizer * tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickGesture:)];
    tapGesture.delegate = self;
    [self addGestureRecognizer:tapGesture];

    testButton * button = [[testButton alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height/2)];
    button.backgroundColor = [UIColor blackColor];
    [button setTitle:@"TestSubView" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(testClick:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:button];
    
    NSLog(@"TestSubView.gestureRecognizers:::-------------%@",self.gestureRecognizers);
//    NSLog(@"testButton.gestureRecognizers:::-------------%@",button.gestureRecognizers);
}

- (void)testClick:(id)sender {
    NSLog(@"click TestSubView");
}

- (void)clickGesture:(UIGestureRecognizer *)gesture {
    NSLog(@"TestSubView click Gesture");
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    return NO;
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    return YES;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
    return  YES;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    NSLog(@"TestSubView---------touchesBegan");
    NSLog(@"TestSubView.nextResponder:%@",self.nextResponder);
    [super touchesBegan:touches withEvent:event];
}
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    NSLog(@"TestSubView---------touchesMoved");
    [super touchesMoved:touches withEvent:event];
}
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    NSLog(@"TestSubView---------touchesEnded");
    [super touchesEnded:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"TestSubView---------touchesCancelled");
    [super touchesCancelled:touches withEvent:event];
}


@end
