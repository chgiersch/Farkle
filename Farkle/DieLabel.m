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

//- (instancetype)initWithValue:(int)value
//{
//    self = [super init];
//
//    if (self)
//    {
//        self.value = value;
//        self.text = 
//        self.isSelected = FALSE;
//    }
//    return self;
//}

-(void)roll
{
    int randomNumber = arc4random_uniform(6)+1;
    self.text = [NSString stringWithFormat:@"%i", randomNumber];
    //    [self.delegate dieLabelDidRollWithValue:randomNumber];
    self.isSelected = false;
}

- (void)diceClicked
{
    if (self.isSelected)
    {
        self.isSelected = FALSE;
        self.alpha = 1;
    }
    else
    {
        self.isSelected = true;
        self.alpha = 0.3;
    }
}

-(IBAction)onDiceTapped:(UITapGestureRecognizer *)sender
{
    [self diceClicked];

    [self.delegate dieLabelSelected:self];
    NSLog(@"Before view controller: %@", self.text);
}



@end
