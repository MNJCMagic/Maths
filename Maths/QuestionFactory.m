//
//  QuestionFactory.m
//  Maths
//
//  Created by Mike Cameron on 2018-04-11.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    }
    return self;
}

-(Question*)generateRandomQuestion {
    
    NSUInteger random = arc4random_uniform(4);
    NSString *randomClass = self.questionSubclassNames[random];
    return [[NSClassFromString(randomClass) alloc] init];
    
    
    
}

@end
