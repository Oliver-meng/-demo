//
//  DevManagerHandle.m
//  责任链demo
//
//  Created by meng'gui'hua on 2017/12/25.
//  Copyright © 2017年 elender. All rights reserved.
//
/**
 假如请假小于一天，部门经理签字即可
 一天到三天，行政经理签字
 三天以上，总经理签字
 */

#import "DevManagerHandle.h"
#import "LeaveModel.h"


@implementation DevManagerHandle

-(void)handleRequestWithModel:(RequestModel *)requestModel {
    
    if ([requestModel.eventType isEqualToString:@"leave"]) {
        
        [self handleLeaveRequestWith:requestModel];
       
    }
    
    else {
        
        NSLog(@"事件未注册");
    }
    
}

-(void)handleLeaveRequestWith:(RequestModel*)requestModel {
    
    LeaveModel * leave = (LeaveModel*)requestModel;
    
    if (leave.days <= 1 ) {
        
        NSLog(@"部门经理处理了你的请假");
        
    }else {
        
        NSLog(@"部门经理已签字,需要行政经理你的请假");
        [self.nextHandler handleRequestWithModel:requestModel];
    }
}
@end
