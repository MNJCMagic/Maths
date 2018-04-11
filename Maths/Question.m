//
//  AdditionQuestion.m
//  Maths
//
//  Created by Mike Cameron on 2018-04-10.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import "Question.h"


@implementation Question

- (instancetype)init {
    
    self = [super init];
    if (self) {
        
        _leftValue = arc4random_uniform(1000);
        _rightValue = arc4random_uniform(1000);
//        _answer = _leftValue + _rightValue;
        _startTime = [NSDate date];
//        _question = [NSString stringWithFormat:@"What is %ld plus %ld?", (long)_leftValue, (long)_rightValue];
//        NSLog(@"%@", self.question);
    }
    return self;
}

-(void)generateQuestion {

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
