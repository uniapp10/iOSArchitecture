//
//  PersonPresenter.m
//  设计模式_MVP
//
//  Created by ZD on 2018/5/2.
//  Copyright © 2018年 朱冬冬. All rights reserved.
//

#import "PersonPresenter.h"

@interface PersonPresenter ()

{
    UIView<ResultViewDelegate> *_view;
    Person *_person;
}

@end
@implementation PersonPresenter
- (instancetype)initWithView:(UIView<ResultViewDelegate> *)view person:(Person *)person{
    self = [super init];
    if (self) {
        _view = view;
        _person = person;
    }
    return self;
}

- (void)showResult{
    NSString *str_welcome;
    if ([@"boy" isEqualToString:_person.sex]) {
        str_welcome = @"boy";
    }else{
        str_welcome = @"girl";
    }
    NSString *resultStr = [NSString stringWithFormat:@"Hello %@, you're a good %@ !", _person.name, str_welcome];
    [_view showResult:resultStr];
}
@end
