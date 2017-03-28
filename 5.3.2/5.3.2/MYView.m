//
//  MYView.m
//  5.3.2
//
//  Created by 李维佳 on 2017/3/28.
//  Copyright © 2017年 Liz. All rights reserved.
//

#import "MYView.h"

@implementation MYView

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if ([self.delegate respondsToSelector:@selector(myView:clickMYButtonShowAlert:)]) {
        [self.delegate myView:self clickMYButtonShowAlert:@"视图被点击了"];
    }
}

@end
