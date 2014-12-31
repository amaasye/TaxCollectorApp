//
//  ViewController.m
//  TaxCalculatorApp
//
//  Created by Syed Amaanullah on 12/28/14.
//  Copyright (c) 2014 Syed Amaanullah. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@property double caTax;
@property double chiTax;
@property double nyTax;

- (IBAction)indexChanged:(UISegmentedControl *)sender;



@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];

    CGRect frame= self.segmentedControl.frame;
    [self.segmentedControl setFrame:CGRectMake(frame.origin.x, frame.origin.y, frame.size.width, 250)];

    self.caTax = .075;
    self.chiTax = .0925;
    self.nyTax = .045;


}

- (IBAction)indexChanged:(UISegmentedControl *)sender {
    NSString *input = self.priceTextField.text;
    double inputValue = input.intValue;

    switch (self.segmentedControl.selectedSegmentIndex) {
        case 0:
        {
            double result = inputValue * self.caTax;
            self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
            break;
        }
        case 1:
        {
            double result = inputValue * self.chiTax;
            self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
        }
        case 2:
        {
            double result = inputValue * self.nyTax;
            self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
        }
        default:
            break;
    }

}



- (IBAction)onCalculateButtonTapped:(id)sender
{
    NSString *input = self.priceTextField.text;
    double inputValue = input.intValue;

    switch (self.segmentedControl.selectedSegmentIndex) {
        case 0:
        {
            double result = inputValue * self.caTax;
            self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
            break;
        }
        case 1:
        {
            double result = inputValue * self.chiTax;
            self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
        }
        case 2:
        {
            double result = inputValue * self.nyTax;
            self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
        }
        default:
            break;
    }

    }



@end
