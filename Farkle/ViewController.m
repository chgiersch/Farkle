//
//  ViewController.m
//  Farkle
//
//  Created by Chris Giersch on 1/14/15.
//  Copyright (c) 2015 ChrisGiersch. All rights reserved.
//

#import "ViewController.h"
#import "DieLabel.h"

@interface ViewController () <DieLabelDelegate>

@property (strong, nonatomic) IBOutlet DieLabel *dieOne;
@property (strong, nonatomic) IBOutlet DieLabel *dieTwo;
@property (strong, nonatomic) IBOutlet DieLabel *dieThree;
@property (strong, nonatomic) IBOutlet DieLabel *dieFour;
@property (strong, nonatomic) IBOutlet DieLabel *dieFive;
@property (strong, nonatomic) IBOutlet DieLabel *dieSix;
@property (strong, nonatomic) IBOutletCollection(DieLabel) NSArray *diceCollection;

@property NSMutableArray *dice;
@property NSMutableArray *diceLabels;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.diceLabels = [[NSMutableArray alloc] initWithObjects: self.dieOne, self.dieTwo, self.dieThree, self.dieFour, self.dieFive, self.dieSix, nil];
    
    for( DieLabel *label in self.diceLabels)
    {
        label.delegate = self;
    }
}

-(void)dieLabelSelected:(UILabel *)dieLabel
{
//    NSLog(dieLabel.text);
    
    [self.dice addObject:dieLabel];
    NSLog(@"%@",self.dice);
}

- (IBAction)onRollButtonPressed:(UIButton *)sender
{
    for( DieLabel *label in self.diceLabels)
    {
        [label roll];
    }

}




@end
