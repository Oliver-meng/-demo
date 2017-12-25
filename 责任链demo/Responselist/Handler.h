//
//  Handler.h
//  责任链demo
//
//  Created by meng'gui'hua on 2017/12/25.
//  Copyright © 2017年 elender. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "RequestModel.h"

@interface Handler : NSObject

@property(nonatomic,strong)Handler * nextHandler;

-(void)handleRequestWithModel:(RequestModel*)requestModel;

@end
