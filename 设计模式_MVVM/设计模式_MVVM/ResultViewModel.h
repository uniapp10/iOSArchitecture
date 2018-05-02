//
//  ResultViewModel.h
//  设计模式_MVVM
//
//  Created by ZD on 2018/5/2.
//  Copyright © 2018年 朱冬冬. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "ResultViewDelegate.h"

@interface ResultViewModel : NSObject

@property (nonatomic, strong) Person *person;
@property (nonatomic, weak) id<ResultViewDelegate> delgate;

@end
