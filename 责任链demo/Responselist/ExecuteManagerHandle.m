//
//  ExecuteManagerHandle.m
//  责任链demo
//
//  Created by meng'gui'hua on 2017/12/25.
//  Copyright © 2017年 elender. All rights reserved.
//

#import "ExecuteManagerHandle.h"
#import "LeaveModel.h"
@implementation ExecuteManagerHandle

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

    if ( leave.days > 1 && leave.days <= 3 ) {
        
        NSLog(@"行政部处理了你的请假");
        
    }else {
        
        NSLog(@"行政经理已签字,需要总经理处理你的请假");
        
        [self.nextHandler handleRequestWithModel:requestModel];
    }
}
@end
