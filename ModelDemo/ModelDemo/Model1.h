//
//  Model1.h
//  ModelDemo
//
//  Created by 陈海哥 on 2016/12/13.
//  Copyright © 2016年 陈海哥. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MJExtension.h"
@interface Model1 : NSObject

@property (nonatomic , copy)NSString * code;
@property (nonatomic , strong)NSArray * data;
@property (nonatomic , copy)NSString * age;
@property (nonatomic , copy)NSString * myname;//转化字典的属性

@end
