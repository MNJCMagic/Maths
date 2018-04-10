//
//  main.m
//  Maths
//
//  Created by Mike Cameron on 2018-04-10.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ScoreKeeper *keeper = [[ScoreKeeper alloc]init];
        BOOL play = true;
        
        while (play) {
            
            //ask question
            AdditionQuestion *question = [[AdditionQuestion alloc] init];
            
            InputHandler *answer = [[InputHandler alloc]init];
            [answer convertedAnswer];
            
            if ([answer.solution isEqualToString:@"quit"]){
                play = false;
                continue;
            }
            
           // NSLog(@"your answer is %@", convertedUserAnswer);
            
            NSInteger intAnswer = [answer.solution intValue];
            
            if (intAnswer == question.answer) {
                NSLog(@"Right!");
                keeper.right++;
            } else {
                NSLog(@"Wrong!");
                keeper.wrong++;
            }
            [keeper percentage];
            
            
        }
    }
    return 0;
}
