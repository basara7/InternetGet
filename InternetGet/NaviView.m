//
//  NaviView.m
//  InternetGet
//
//  Created by Mao Mao on 16/4/29.
//  Copyright © 2016年 Mao Mao. All rights reserved.
//

#import "NaviView.h"

@interface NaviView ()
@property (weak, nonatomic) IBOutlet UIButton *buttom;



@end

@implementation NaviView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

+(instancetype)makeNaviView{
    return [[[NSBundle mainBundle] loadNibNamed:@"NaviView" owner:self options:nil] firstObject];
}

- (void)addtarget:(id)target action:(SEL)action{
    [self.buttom addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
}

@end
