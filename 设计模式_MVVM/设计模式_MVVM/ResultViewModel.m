//
//  ResultViewModel.m
//  设计模式_MVVM
//
//  Created by ZD on 2018/5/2.
//  Copyright © 2018年 朱冬冬. All rights reserved.
//

#import "ResultViewModel.h"

@implementation ResultViewModel

- (void)setPerson:(Person *)person{
    _person = person;
    
    NSString *str_welcome;
    if ([@"boy" isEqualToString:_person.sex]) {
        str_welcome = @"boy";
    }else{
        str_welcome = @"girl";
    }
    NSString *resultStr = [NSString stringWithFormat:@"Hello %@, you're a good %@ !", _person.name, str_welcome];
    [self.delgate showResult:resultStr];
}
@end
