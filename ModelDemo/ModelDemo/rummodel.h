//
//  rummodel.h
//  ModelDemo
//
//  Created by 陈海哥 on 2016/12/27.
//  Copyright © 2016年 陈海哥. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ModelRumtime.h"
@interface rummodel : NSObject

@property (nonatomic , copy)NSString * code;
@property (nonatomic , strong)NSArray * data;
@property (nonatomic , copy)NSString * age;
@property (nonatomic , copy)NSString * myname;
@property (nonatomic , strong)NSNumber * type;

@end
