//
//  main.m
//  Maths
//
//  Created by Mike Cameron on 2018-04-10.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // make scorekeeper and questionmanager
        ScoreKeeper *keeper = [[ScoreKeeper alloc]init];
        QuestionManager *manager = [[QuestionManager alloc] init];
        QuestionFactory *factory = [[QuestionFactory alloc] init];
        
        BOOL play = true;
        
        while (play) {
            
            //ask question old way
            //Question *question = [[Question alloc] init];
            
            Question *question = [factory generateRandomQuestion];
            NSLog(@"%@", question.question);
            
            // get response
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
            
            //store question in questionmanager array
            [manager.questions addObject:question];
            
            //log score
            [keeper percentage];
            
            //log time output
            NSLog(@"%@", manager.timeOutput);
            
            
        }
    }
    return 0;
}
