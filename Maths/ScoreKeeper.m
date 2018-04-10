//
//  ScoreKeeper.m
//  Maths
//
//  Created by Mike Cameron on 2018-04-10.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(instancetype)init{
    self = [super init];
    if(self){
        _right = 0;
        _wrong = 0;
        _percent = 0;
    }
    return self;
}

-(void)percentage{
    
    _percent = ((_right)*100 / (_right + _wrong)*100)/100;
    NSLog(@"score: %ld right, %ld wrong --- %f%%", _right, _wrong, _percent);
}

@end
