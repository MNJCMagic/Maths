//
//  InputHandler.m
//  Maths
//
//  Created by Mike Cameron on 2018-04-10.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

-(void)convertedAnswer{
    //get user answer in C
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    
    //convert to NSString
    NSString *userAnswer = [NSString stringWithCString:inputChars
                                              encoding:NSUTF8StringEncoding];
    
    NSCharacterSet *space = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    
    _solution = [userAnswer stringByTrimmingCharactersInSet:space];

}

@end
