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


@end

@interface DieLabel :UILabel

@property int value;

- (void)roll;
- (instancetype)initWithValue:(int)value;



@property (nonatomic, weak) id<DieLabelDelegate> delegate;


@end
