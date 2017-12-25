//
//  Handler.m
//  责任链demo
//
//  Created by meng'gui'hua on 2017/12/25.
//  Copyright © 2017年 elender. All rights reserved.
//

#import "Handler.h"

@implementation Handler

-(void)handleRequestWithModel:(RequestModel *)requestModel {
    
    if (self.nextHandler) {
        
        [self.nextHandler handleRequestWithModel:requestModel];
    }
}
@end
