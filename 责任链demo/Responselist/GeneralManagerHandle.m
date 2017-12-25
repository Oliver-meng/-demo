//
//  GeneralManagerHandle.m
//  责任链demo
//
//  Created by meng'gui'hua on 2017/12/25.
//  Copyright © 2017年 elender. All rights reserved.
//

#import "GeneralManagerHandle.h"
#import "LeaveModel.h"

@implementation GeneralManagerHandle

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
    
    if ( leave.days > 3  ) {
        
        NSLog(@"总经理同意了你的请假");
        
    }else {
        
        NSLog(@"不需要我处理你的请假");
       
    }
}

@end
