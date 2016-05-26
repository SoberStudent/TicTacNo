//
//  ViewController.m
//  TicTacNo
//
//  Created by Tyler Italiano on 5/26/16.
//  Copyright © 2016 Tyler Italiano. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *whichPlayerLabel;
@property (weak, nonatomic) IBOutlet UIButton *buttonOne;
@property (weak, nonatomic) IBOutlet UIButton *buttonTwo;
@property (weak, nonatomic) IBOutlet UIButton *buttonThree;
@property (weak, nonatomic) IBOutlet UIButton *buttonFour;
@property (weak, nonatomic) IBOutlet UIButton *buttonFive;
@property (weak, nonatomic) IBOutlet UIButton *buttonSix;
@property (weak, nonatomic) IBOutlet UIButton *buttonSeven;
@property (weak, nonatomic) IBOutlet UIButton *buttonEight;
@property (weak, nonatomic) IBOutlet UIButton *buttonNine;

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *buttons;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *winningCombo1;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *winningCombo3;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.whichPlayerLabel.text = [NSString stringWithFormat:@"X"];
    
    for (UIButton *button in self.buttons) {
        [button setTitle:@"" forState:UIControlStateNormal];
    }
}
                                  
- (IBAction)onResetButtonPressed:(UIButton *)sender {
    for (UIButton *button in self.buttons) {
        [button setTitle:@"" forState:UIControlStateNormal];
    }
}


- (IBAction)onButtonTapped:(UIButton *)button {
//    if (self.buttonOne ) {
//        <#statements#>
//    }
//    
    [button setTitle:self.whichPlayerLabel.text forState:UIControlStateNormal];
    [self checkWinner];
    // I want to create a string instance firstButton that turns IBOutlet buttonOne's text
//    NSString *firstButton = self.buttonOne.titleLabel.text;
    if ([self.whichPlayerLabel.text isEqualToString:@"X"]) {
        self.whichPlayerLabel.text = @"O";
    } else {
        self.whichPlayerLabel.text = @"X";
    }
    // NSLog(@"Jiggly Puff");
    
    
}

-(void)checkWinner{
    //logic to see if anyone won
    // make an array of all comboArrays
    // fast enumerate over that array
    // make first second third buttons from array object at index
    // if the first equals the second, the second equals the third, and the third != @"" then do something like alertcontroller
    NSArray *winners = [NSArray arrayWithObjects:self.winningCombo1, self.winningCombo3, nil];
    for (NSArray *array in winners) {
            UIButton *firstButton = [array objectAtIndex:0];
            UIButton *secondButton = [array objectAtIndex:1];
            UIButton *thirdButton = [array objectAtIndex:2];
            
            if ([firstButton.currentTitle isEqualToString:secondButton.currentTitle] && [secondButton.currentTitle isEqualToString:thirdButton.currentTitle] && ![secondButton.currentTitle isEqualToString:@""]) {
                NSLog(@"%@ wins!", secondButton.currentTitle);
            }

    }
}



@end
