//
//  ViewController.m
//  ModelDemo
//
//  Created by 陈海哥 on 2016/12/13.
//  Copyright © 2016年 陈海哥. All rights reserved.
//

#import "ViewController.h"
#import "MJExtension.h"
#import "Model1.h"
#import "Model2.h"
#import "rummodel.h"
#import "ModelRumtime.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self plistJX2];
    [self RumtimeJX];
}

#pragma mark 以下都为一级转换，多少层字典则需要转多少次，MJExtension有三级转换，自己摸索
- (void)plistJX
{
    NSDictionary * dict = [[NSDictionary alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"ModeDemo" ofType:@"plist"]];
    NSLog(@"源数据====%@",dict);
    Model1 * model = [Model1 mj_objectWithKeyValues:dict];
    NSLog(@"model.data==%@",model.data);
    NSArray * arr = [Model1 mj_objectArrayWithKeyValuesArray:model.data];
    Model1 * model2 = arr[1];
    NSLog(@"model的数组 == %@",model2.myname);//arr
    
}

- (void)plistJX2
{
    NSDictionary * dict = [[NSDictionary alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"ModeDemo" ofType:@"plist"]];
    NSLog(@"源数据====%@",dict);
    Model2 * model = [Model2 statusWithDict:dict];
    NSLog(@"model.data2222:==%@",model.data);
    NSArray * arr = [Model2 statusWithDictArr:model.data];
    Model2 * model2 = arr[1];
    NSLog(@"model的数组 == %@",model2.myname);//
    
}

- (void)plistJX3
{
    NSDictionary * dict = [[NSDictionary alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"ModeDemo" ofType:@"plist"]];
    NSLog(@"源数据====%@",dict);
    model3 * model = [model3 initWithDict:dict];
    NSLog(@"model.data33333:==%@",model.data);
    __block NSMutableArray * arr = [NSMutableArray new];
    [model.data enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [arr addObject:[model3 initWithDict:obj]];
    }];
    model3 * model2 = arr[1];
    NSLog(@"model的数组 == %@",model2.myname);//

    
}

-(void)RumtimeJX
{
    NSDictionary * dict = [[NSDictionary alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"ModeDemo" ofType:@"plist"]];
//    NSArray * arr = dict[@"data"];
     rummodel * model1 = [rummodel modelWithDictionary:dict targ:[rummodel class]];
    
    for (NSDictionary * dict2 in model1.data) {
        
        rummodel * model2 = [rummodel modelWithDictionary:dict2 targ:[rummodel class]];
        NSLog(@"xxxx===%@",model2.type);
        
    }
    
}


@end
