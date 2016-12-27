//
//  Model2.m
//  ModelDemo
//
//  Created by 陈海哥 on 2016/12/13.
//  Copyright © 2016年 陈海哥. All rights reserved.
//

#import "Model2.h"

@implementation Model2

//+ (instancetype)statusWithDict:(NSDictionary *)dict
//{
//    Model2 *status = [[self alloc] init];
//    //利用KVC字典转模型
//    [status setValuesForKeysWithDictionary:dict];
//    
//    return status;
//}

+ (instancetype)statusWithDict:(NSDictionary *)dict
{
    Model2 *status = [[self alloc] init];
    
    //setValuesForKeysWithDictionary:原理--遍历字典中所有的key,去模型中查找对应的属性,把值给模型属性赋值
    
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        // 这行代码才是真正给模型的属性赋值
        [status setValue:obj forKey:key];
    }];
    return status;
    
}

- (void)setValue:(id)value forKey:(NSString *)key
{
    if ([key isEqualToString:@"name"]) {
        
        key = @"myname";
        
        [super setValue:value forKey:key];

    }
    else
    {
        [super setValue:value forKey:key];
    }
}

+ (NSArray *)statusWithDictArr:(NSArray<NSDictionary *> *)Arr
{
    __block NSMutableArray * arr = [NSMutableArray new];
    
    [Arr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        [arr addObject:[self statusWithDict:obj]];
        
    }];
    
    return arr;
}

@end

@implementation model3

+ (instancetype)initWithDict:(NSDictionary *)dict
{
   return [[self alloc] initWithDict:dict];
}

- (instancetype)initWithDict:(NSDictionary *)dict
{
    if ([super init]) {
        
        self.code = dict[@"code"];
        self.data = dict[@"data"];
        self.age = dict[@"age"];
        self.myname = dict[@"name"];
    }
    
    return self;
}

@end
