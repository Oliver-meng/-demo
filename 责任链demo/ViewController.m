//
//  ViewController.m
//  责任链demo
//
//  Created by meng'gui'hua on 2017/12/25.
//  Copyright © 2017年 elender. All rights reserved.
//

#import "ViewController.h"
#import "Handler.h"
#import "DevManagerHandle.h"

#import "ExecuteManagerHandle.h"

#import "GeneralManagerHandle.h"

#import "LeaveModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    DevManagerHandle * devHandle = [[DevManagerHandle alloc]init];
    
    ExecuteManagerHandle * executeHandle = [[ExecuteManagerHandle alloc]init];
    
    GeneralManagerHandle * eneralHanle = [[ GeneralManagerHandle alloc]init];
    
    devHandle.nextHandler = executeHandle;
    
    executeHandle.nextHandler = eneralHanle;
    
    LeaveModel * model = [[LeaveModel alloc]init];
    
    model.days = 3;
    
    [devHandle handleRequestWithModel:model];
    
    NSLog(@"===============================");
    
    model.days = 6;
    
    [devHandle handleRequestWithModel:model];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
