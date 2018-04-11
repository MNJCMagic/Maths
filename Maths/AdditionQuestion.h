//
//  AdditionQuestion.h
//  Maths
//
//  Created by Mike Cameron on 2018-04-10.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property (nonatomic) NSInteger answer;
@property (nonatomic) NSDate* startTime;
@property (nonatomic) NSDate* endTime;
@property (nonatomic) NSTimeInterval answerTime;

@end
