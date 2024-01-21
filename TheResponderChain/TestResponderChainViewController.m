//
//  TestResponderChainViewController.m
//  TheResponderChain
//
//  Created by 范云飞 on 2021/8/13.
//

#import "TestResponderChainViewController.h"

//#import "TestCoordinateView.h"

#import "TestSuperView.h"
#import "TestScrollView.h"

#import "TestSubView.h"

@interface TestResponderChainViewController ()

@end

@implementation TestResponderChainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
//    TestCoordinateView * coordinateView = [[TestCoordinateView alloc] initWithFrame:CGRectMake(20, 100, 300, 200)];
//    [self.view addSubview:coordinateView];
    
    TestScrollView * scrollview = [[TestScrollView alloc] initWithFrame:self.view.bounds];
    scrollview.userInteractionEnabled = YES;
    scrollview.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:scrollview];

    TestSuperView * superView  = [[TestSuperView alloc] initWithFrame:CGRectMake(0, 0, 300, 500)];
    superView.backgroundColor = [UIColor redColor];
    [self.view addSubview:superView];

    TestSubView * subView = [[TestSubView alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
    subView.backgroundColor = [UIColor blueColor];
    [superView addSubview:subView];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    NSLog(@"TestResponderChainViewController---------touchesBegan");
    NSLog(@"TestResponderChainViewController.nextResponder:%@",self.nextResponder);
}
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    NSLog(@"TestResponderChainViewController---------touchesMoved");
}
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    NSLog(@"TestResponderChainViewController---------touchesEnded");
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"TestResponderChainViewController---------touchesCancelled");
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
