//
//  PersonPresenter.h
//  设计模式_MVP
//
//  Created by ZD on 2018/5/2.
//  Copyright © 2018年 朱冬冬. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Person.h"
#import "ResultViewDelegate.h"

@interface PersonPresenter : NSObject

- (instancetype)initWithView:(UIView<ResultViewDelegate> *)view person:(Person *)person;
- (void)showResult;

@end
