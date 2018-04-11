//
//  AdditionQuestion.m
//  Maths
//
//  Created by Mike Cameron on 2018-04-10.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import "AdditionQuestion.h"


@implementation AdditionQuestion

- (instancetype)init {
    
    self = [super init];
    if (self) {
        
        int first = arc4random_uniform(1000);
        int second = arc4random_uniform(1000);
        _answer = first + second;
        _startTime = [NSDate date];
        NSLog(@"What is %d plus %d?", first, second);
    }
    return self;
}

-(NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

-(NSTimeInterval)answerTime {
    
    _answerTime = [self.endTime timeIntervalSinceDate:self.startTime];
   
    return _answerTime;

}

@end
