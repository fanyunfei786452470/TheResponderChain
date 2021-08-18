//
//  ViewController.m
//  TheResponderChain
//
//  Created by 范云飞 on 2021/8/13.
//

#import "ViewController.h"
#import "TestResponderChainViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 80, 30)];
    button.backgroundColor = [UIColor blackColor];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(goCoordinateVC:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)goCoordinateVC:(UIButton *)sender {
    TestResponderChainViewController *vc = [[TestResponderChainViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    NSLog(@"ViewController---------touchesBegan");
}
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    NSLog(@"ViewController---------touchesMoved");
}
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    NSLog(@"ViewController---------touchesEnded");
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"ViewController---------touchesCancelled");
}



@end
