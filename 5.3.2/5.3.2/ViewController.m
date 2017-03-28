//
//  ViewController.m
//  5.3.2
//
//  Created by 李维佳 on 2017/3/28.
//  Copyright © 2017年 Liz. All rights reserved.
//

#import "ViewController.h"

#import "MYView.h"
@interface ViewController () <MyViewDelegate>
@property (nonatomic,strong) MYView *myView;
@end

@implementation ViewController

-(MYView *)myView{
    if (_myView == nil) {
        _myView = [[MYView alloc] init];
        _myView.frame = CGRectMake(0, 500, 320, 50);
        _myView.backgroundColor = [UIColor yellowColor];
        _myView.delegate = self;//设置代理对象
    }
    return _myView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.myView];
}

-(void)myView:(MYView *)myView clickMYButtonShowAlert:(NSString *)message{
    NSLog(@"%s",__func__);
    NSLog(@"传递的消息是：%@",message);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
