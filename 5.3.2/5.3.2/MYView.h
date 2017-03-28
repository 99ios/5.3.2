//
//  MYView.h
//  5.3.2
//
//  Created by 李维佳 on 2017/3/28.
//  Copyright © 2017年 Liz. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MYView;
@protocol MyViewDelegate <NSObject>
-(void) myView:(MYView *) myView clickMYButtonShowAlert:(NSString *) message;
@end
@interface MYView : UIView
@property (nonatomic, weak) id <MyViewDelegate> delegate;
@end
