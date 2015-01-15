//
//  DieLabel.h
//  Farkle
//
//  Created by Chris Giersch on 1/14/15.
//  Copyright (c) 2015 ChrisGiersch. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DieLabelDelegate <NSObject>

- (void) dieLabelSelected:(UILabel *) dieLabel;

@optional

-(IBAction)onDiceTapped:(UITapGestureRecognizer *)sender;



@end

@interface DieLabel :UILabel

@property BOOL isSelected;
//@property int value;

- (void)roll;
//- (instancetype)initWithValue:(int)value;



@property (nonatomic, weak) id<DieLabelDelegate> delegate;


@end
