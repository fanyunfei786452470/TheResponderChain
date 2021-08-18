//
//  TestCoordinateView.m
//  CALayerDemo
//
//  Created by 范云飞 on 2020/11/6.
//  Copyright © 2020 范云飞. All rights reserved.
//

#import "TestCoordinateView.h"
#import <CoreText/CoreText.h>

@implementation TestCoordinateView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
 */
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [super drawRect:rect];
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 0, self.bounds.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    NSLog(@"CGContext default matrix %@", NSStringFromCGAffineTransform(CGContextGetCTM(context)));
    NSAttributedString *attrStr = [[NSAttributedString alloc] initWithString:@"测试文本" attributes:@{
        NSForegroundColorAttributeName:[UIColor whiteColor],
        NSFontAttributeName:[UIFont systemFontOfSize:14],
    }];

    CTFramesetterRef frameSetter = CTFramesetterCreateWithAttributedString((__bridge CFAttributedStringRef) attrStr); // 根据富文本创建排版类CTFramesetterRef
    UIBezierPath * bezierPath = [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, 100, 20)];
    CTFrameRef frameRef = CTFramesetterCreateFrame(frameSetter, CFRangeMake(0, 0), bezierPath.CGPath, NULL); // 创建排版数据
    CTFrameDraw(frameRef, context);
    CGContextTranslateCTM(context, 0, self.bounds.size.height - 20);
    CGContextRestoreGState(context);
    
//    CGContextSaveGState(context);
//    NSLog(@"CGContext default CTM matrix %@", NSStringFromCGAffineTransform(CGContextGetCTM(context)));
//    UILabel *testLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 28)];
//    testLabel.text = @"测试文本";
//    testLabel.font = [UIFont systemFontOfSize:14];
//    testLabel.textColor = [UIColor whiteColor];
//    [testLabel.layer renderInContext:context];
//    CGContextRestoreGState(context);
    
    CGContextSaveGState(context);
    // 绘制文字
    CGRect textRect =  CGRectMake(0, 0, 100, 20);
    
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:1];//行间距
    paragraphStyle.alignment = NSTextAlignmentLeft;//文本对齐方式 左右对齐（两边对齐）
    NSString * text = @"滚犊子";
    NSDictionary *textDict = @{NSFontAttributeName:[UIFont systemFontOfSize:16],
                               NSForegroundColorAttributeName:[UIColor redColor],
                               NSParagraphStyleAttributeName:paragraphStyle};
    [text drawInRect:textRect withAttributes:textDict];
    CGContextRestoreGState(context);
}

@end
