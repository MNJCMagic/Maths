//
//  QuestionManager.h
//  Maths
//
//  Created by Mike Cameron on 2018-04-10.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

@interface QuestionManager : NSObject

@property (nonatomic) NSMutableArray* questions;
@property (nonatomic) double totalTime;
@property (nonatomic) double averageTime;

-(NSString*)timeOutput;


@end
