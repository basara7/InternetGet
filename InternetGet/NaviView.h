//
//  NaviView.h
//  InternetGet
//
//  Created by Mao Mao on 16/4/29.
//  Copyright © 2016年 Mao Mao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NaviView : UIView

+ (instancetype) makeNaviView;

- (void) addtarget:(id)target action:(SEL)action;

@end
