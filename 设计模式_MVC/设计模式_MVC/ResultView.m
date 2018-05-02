//
//  ResultView.m
//  设计模式_MVC
//
//  Created by ZD on 2018/4/28.
//  Copyright © 2018年 朱冬冬. All rights reserved.
//

#import "ResultView.h"

@interface ResultView ()
{
    UILabel *lable_res;
}
@end
@implementation ResultView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        lable_res = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, frame.size.width,
                                                              frame.size.height)];
        [self addSubview:lable_res];
    }
    return self;
}

- (void)setPerson:(Person *)person{
    _person = person;
    NSString *str_welcome;
    if ([@"boy" isEqualToString:person.sex]) {
        str_welcome = @"boy";
    }else{
        str_welcome = @"girl";
    }
    lable_res.text = [NSString stringWithFormat:@"Hello %@, you're a good %@ !", person.name, str_welcome];
}
@end
