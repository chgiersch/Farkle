//
//  DieLabel.m
//  Farkle
//
//  Created by Chris Giersch on 1/14/15.
//  Copyright (c) 2015 ChrisGiersch. All rights reserved.
//

#import "DieLabel.h"
#import <UIKit/UIKit.h>


@implementation DieLabel

-(IBAction)onDiceTapped:(UITapGestureRecognizer *)sender
{
    [self.delegate dieLabelSelected:sender];
}



-(void)roll
{
    int randomNumber = arc4random_uniform(6)+1;
    self.text = [NSString stringWithFormat:@"%i", randomNumber];
//    [self.delegate dieLabelDidRollWithValue:randomNumber];
}

- (instancetype)initWithValue:(int)value
{
    self = [super init];
    
    if (self)
    {
        self.value = value;
    }
    return self;
}

@end
