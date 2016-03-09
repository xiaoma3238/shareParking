//
//  Header.h
//  Haha parking
//
//  Created by ZETADATA on 15/9/14.
//  Copyright (c) 2015年 ZETADATA. All rights reserved.
//

#ifndef Haha_parking_Header_h
#define Haha_parking_Header_h

#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]


#define Wi [UIScreen mainScreen].bounds.size.width

#define Hi [UIScreen mainScreen].bounds.size.height

//高度等于480
#define HIGH_RESOLUTION4             ([UIScreen mainScreen].bounds.size.height == 480)
//高度大于480
#define HIGH_RESOLUTION5             ([UIScreen mainScreen].bounds.size.height ==568)
//高度等于667
#define HIGH_RESOLUTION6             ([UIScreen mainScreen].bounds.size.height ==667)
//高度大于667
#define HIGH_RESOLUTION6Plus         ([UIScreen mainScreen].bounds.size.height ==736)

#define DLog( s, ... ) NSLog( @"<%p %@:(%d)> %@", self, [[NSString stringWithUTF8String:__FILE__] lastPathComponent], __LINE__, [NSString stringWithFormat:(s), ##__VA_ARGS__] )

#define   BASE_URL  @"http://haha.cheergoal.cn/api/"



#define KEY_ACCESSTOKEN @"token"

// 宏定义一个方法,括号里面是方法的参数
#define SHOWALERT(messageString,otherString)    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:messageString delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:otherString,nil];[alert show];

#endif
