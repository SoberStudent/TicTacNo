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



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.whichPlayerLabel.text = [NSString stringWithFormat:@"Player 1"];
}
                                  


- (IBAction)onButtonTapped:(UIButton *)button {
    // I want to create a string instance firstButton that turns IBOutlet buttonOne's text
    NSString *firstButton = [NSString self.buttonOne.text;
    
    // NSLog(@"Jiggly Puff");
    
    
}





@end
