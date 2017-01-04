//
//  NSObject+MchangeD.h
//  ModelDemo
//
//  Created by 陈海哥 on 2017/1/4.
//  Copyright © 2017年 陈海哥. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (MchangeD)
/**
 *  模型转字典
 *
 *  @return 字典
 */
- ( NSDictionary * _Nonnull)dictionaryFromModel;
/**
 *  带model的数组或字典转字典
 *
 *  @param object 带model的数组或字典转
 *
 *  @return 字典
 */
- (_Nonnull id)idFromObject:(nonnull id)object;

@end
