//
//  NSObject+Runtime.m
//  ModelDemo
//
//  Created by 陈海哥 on 2016/12/27.
//  Copyright © 2016年 陈海哥. All rights reserved.
//

#import "NSObject+Runtime.h"
#import <objc/runtime.h>

@implementation NSObject (Runtime)

- (id)modelWithDictionary:(NSDictionary *)dictionary targ:(id)targ
{

    id objc = [targ new];
    __block NSMutableDictionary * modeldict = [[NSMutableDictionary alloc] initWithDictionary:dictionary];
    if ([objc propertyMapDict]) {
        NSDictionary * dict = [objc propertyMapDict];
        [dict.allKeys enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            if (dictionary[dict[obj]]) {
                
                [modeldict setObject:dictionary[dict[obj]] forKey:obj];
                [modeldict removeObjectForKey:dict[obj]];
            }
            
        }];
        
        NSLog(@"===xxx%@",modeldict);

    }
    // class_copyIvarList:获取类中的所有成员属性
    // Ivar：成员属性的意思
    unsigned int count;
    // 获取类中的所有成员属性
    Ivar *ivarList = class_copyIvarList(targ, &count);
    
    for (int i = 0; i < count; i++) {
        // 根据角标，从数组取出对应的成员属性
        Ivar ivar = ivarList[i];
        
        // 获取成员属性名
        NSString *name = [NSString stringWithUTF8String:ivar_getName(ivar)];
        // 处理成员属性名->字典中的key
        // 从第一个角标开始截取
        NSString *key = [name substringFromIndex:1];
        
        // 根据成员属性名去字典中查找对应的value
        id value = modeldict[key];
        
        if (value) { // 有值，才需要给模型的属性赋值
            // 利用KVC给模型中的属性赋值
            [objc setValue:value forKey:key];
        }
    }
    
    return objc;
    
}

- (NSDictionary *)propertyMapDict
{
    return nil;
}


@end
