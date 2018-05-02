//
//  ResultViewDelegate.h
//  设计模式_MVP
//
//  Created by ZD on 2018/5/2.
//  Copyright © 2018年 朱冬冬. All rights reserved.
//

#ifndef ResultViewDelegate_h
#define ResultViewDelegate_h

#import <UIKit/UIKit.h>

@protocol ResultViewDelegate

@required
- (void)showResult:(NSString *)result;

@end


#endif /* ResultViewDelegate_h */
