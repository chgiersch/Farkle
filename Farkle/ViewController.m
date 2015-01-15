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

//@property (strong, nonatomic) IBOutlet DieLabel *dieOne;
//@property (strong, nonatomic) IBOutlet DieLabel *dieTwo;
//@property (strong, nonatomic) IBOutlet DieLabel *dieThree;
//@property (strong, nonatomic) IBOutlet DieLabel *dieFour;
//@property (strong, nonatomic) IBOutlet DieLabel *dieFive;
//@property (strong, nonatomic) IBOutlet DieLabel *dieSix;
@property (strong, nonatomic) IBOutletCollection(DieLabel) NSArray *diceCollection;

@property NSMutableArray *selectedDice;
//@property NSMutableArray *diceLabels;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.selectedDice = [NSMutableArray new];
    
//    self.diceLabels = [[NSMutableArray alloc] initWithObjects: self.dieOne, self.dieTwo, self.dieThree, self.dieFour, self.dieFive, self.dieSix, nil];

    for(DieLabel *label in self.diceCollection)
    {
        label.delegate = self;
        label.isSelected = false;
    }
}



-(void)dieLabelSelected:(UILabel *)dieLabel  //
{
//    dieLabel.isSelected = TRUE;
    [self.selectedDice addObject:dieLabel];
    
//    UILabel *localDie = [self.selectedDice objectAtIndex:0];
//    NSLog(@"View controller: %@",dieLabel.text);

//    NSLog(@"Array pull: %@",localDie.text);

    //NSLog(@"%@", dieLabel.isSelected);
}



- (IBAction)onRollButtonPressed:(UIButton *)sender
{
    for(DieLabel *label in self.diceCollection)
    {
        if (!label.isSelected)
        {
            [label roll];
        }
    }

}




@end
