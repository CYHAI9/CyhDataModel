//
//  NSObject+Runtime.h
//  ModelDemo
//
//  Created by 陈海哥 on 2016/12/27.
//  Copyright © 2016年 陈海哥. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Runtime)
- (id)modelWithDictionary:(NSDictionary *)dictionary targ:(id)targ;
- (NSDictionary *)propertyMapDict;
@end
