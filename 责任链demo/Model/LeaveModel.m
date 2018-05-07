//
//  LeaveModel.m
//  责任链demo
//
//  Created by meng'gui'hua on 2017/12/25.
//  Copyright © 2017年 elender. All rights reserved.
//

#import "LeaveModel.h"

@implementation LeaveModel

-(instancetype)init {
    if (self = [super init]) {
        self.eventType = @"leave";
    }
    return self;
}
@end
