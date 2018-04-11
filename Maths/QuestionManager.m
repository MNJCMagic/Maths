//
//  QuestionManager.m
//  Maths
//
//  Created by Mike Cameron on 2018-04-10.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

-(NSString*)timeOutput {
    for (AdditionQuestion *time in _questions) {
        self.totalTime = self.totalTime + time.answerTime ;
    }
    self.averageTime = self.totalTime / [self.questions count];
    NSString *output = [NSString stringWithFormat:@"total time is %.2fs, average time is: : %.2fs", self.totalTime, self.averageTime];

   return output;
}
@end
