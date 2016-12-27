//
//  Model2.h
//  ModelDemo
//
//  Created by 陈海哥 on 2016/12/13.
//  Copyright © 2016年 陈海哥. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model2 : NSObject

@property (nonatomic , copy)NSString * code;
@property (nonatomic , strong)NSArray * data;
@property (nonatomic , copy)NSString * age;
@property (nonatomic , copy)NSString * myname;//转化字典的属性
@property (nonatomic , strong)NSNumber * type;

+ (instancetype)statusWithDict:(NSDictionary *)dict;
+ (NSArray *)statusWithDictArr:(NSArray<NSDictionary *>*)Arr;

@end

@interface model3 : NSObject

@property (nonatomic , copy)NSString * code;
@property (nonatomic , strong)NSArray * data;
@property (nonatomic , copy)NSString * age;
@property (nonatomic , copy)NSString * myname;//转化字典的属性
+ (instancetype)initWithDict:(NSDictionary *)dict;
- (instancetype)initWithDict:(NSDictionary *)dict;

@end


