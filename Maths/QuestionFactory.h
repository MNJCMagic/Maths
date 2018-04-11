//
//  QuestionFactory.h
//  Maths
//
//  Created by Mike Cameron on 2018-04-11.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

@property (nonatomic, strong) NSArray* questionSubclassNames;
-(Question*)generateRandomQuestion;

@end
