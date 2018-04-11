//
//  SubtractionQuestion.m
//  Maths
//
//  Created by Mike Cameron on 2018-04-11.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion {
    super.question = [NSString stringWithFormat:@"What is %ld - %ld?", self.leftValue, self.rightValue];
    super.answer = self.leftValue - self.rightValue;
    
}

@end
